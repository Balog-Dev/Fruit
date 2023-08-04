<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\CmsPage;
use App\Models\Section;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductsFilter;
use Validator;

class APIController extends Controller
{
    public function registerUser(Request $request){
        if($request->isMethod('post')){
            $data = $request->input();
            /*echo "<pre>"; print_r($data); die;*/

            $rules = [
                "name" => "required",
                "email" => "required|email|unique:users",
                "password" => "required"
            ];
            $customMessages = [
                "name.required" => "Name is required",
                "email.required" => "Email is required",
                "email.unique" => "Email already exists",
                "password.required" => "Password is required"
            ];

            $validator = Validator::make($data,$rules,$customMessages);
            if($validator->fails()){
                return response()->json($validator->errors(),422);
            }

            $user = new User;
            $user->name = $data['name'];
            $user->mobile = $data['mobile'];
            $user->email = $data['email'];
            $user->password = bcrypt($data['password']);
            $user->status = 1;
            $user->save();
            return response()->json(['status'=>true,'message'=>'User registered successfully!'],201);
        }
    }

    public function loginUser(Request $request){
        if($request->isMethod('post')){
            $data = $request->input();
            /*echo "<pre>"; print_r($data); die;*/

            $rules = [
                "email" => "required|email|exists:users",
                "password" => "required"
            ];
            $customMessages = [
                "email.required" => "Email is required",
                "email.exists" => "Email does not exists",
                "password.required" => "Password is required"
            ];

            $validator = Validator::make($data,$rules,$customMessages);
            if($validator->fails()){
                return response()->json($validator->errors(),422);
            }

            // Verify User Email
            $userCount = User::where('email',$data['email'])->count();
            if($userCount>0){
                // Fetch User Details
                $userDetails = User::where('email',$data['email'])->first();

                // Verify the password
                if(password_verify($data['password'],$userDetails->password)){
                    return response()->json([
                        "userDetails"=>$userDetails,
                        "status"=>true,
                        "message"=>"User Login Successfully!"
                    ],201);
                }else{
                    $message = "Password is Incorrect!";
                    return response()->json(['status'=>false,"message"=>$message],422);
                }   
            }else{
                $message = "Email is Incorrect!";
                return response()->json(['status'=>false,"message"=>$message],422);
            }            
        }
    }

    public function updateUser(Request $request){
        if($request->isMethod('post')){
            $data = $request->input();
            /*echo "<pre>"; print_r($data); die;*/

            $rules = [
                "name" => "required"
            ];
            $customMessages = [
                "name.required" => "Name is required"
            ];

            $validator = Validator::make($data,$rules,$customMessages);
            if($validator->fails()){
                return response()->json($validator->errors(),422);
            }

            // Verify User ID
            $userCount = User::where('id',$data['id'])->count();
            if($userCount>0){

                if(empty($data['address'])){
                    $data['address']="";
                }
                if(empty($data['city'])){
                    $data['city']="";
                }
                if(empty($data['state'])){
                    $data['state']="";
                }
                if(empty($data['country'])){
                    $data['country']="";
                }
                if(empty($data['pincode'])){
                    $data['pincode']="";
                }

                // Update User Details
                User::where('id',$data['id'])->update(['name'=>$data['name'],'address'=>$data['address'],'city'=>$data['city'],'state'=>$data['state'],'country'=>$data['country'],'pincode'=>$data['pincode']]);

                // Fetch User Details
                $userDetails = User::where('id',$data['id'])->first();

                return response()->json([
                    "userDetails"=>$userDetails,
                    "status"=>true,
                    "message"=>"User Updated Successfully!"
                ],201);
                
            }else{
                $message = "User does not exists!";
                return response()->json(['status'=>false,"message"=>$message],422);
            }


        }
    }

    public function cmsPage(){
        $currentRoute = url()->current();
        $currentRoute = str_replace("http://127.0.0.1:8000/api/","",$currentRoute);
        $cmsRoutes = CmsPage::select('url')->where('status',1)->get()->pluck('url')->toArray();
        if(in_array($currentRoute,$cmsRoutes)){
            $cmsPageDetails = CmsPage::where('url',$currentRoute)->get();
            return response()->json([
                'cmsPageDetails'=>$cmsPageDetails,
                'status'=>true,
                "message"=>"Page details fetched successfully!"
            ],200);
        }else{
            $message = "Page does not exists!";
            return response()->json(['status'=>false,"message"=>$message],422);
        }
        
    }

    public function menu(){
        $categories = Section::with('categories')->get();
        return response()->json(["categories"=>$categories],200);
    }

    public function listing($url){
        $categoryCount = Category::where(['url'=>$url,'status'=>1])->count();
        if($categoryCount>0){
            // Get Category Details
            $categoryDetails = Category::categoryDetails($url);            
            $categoryProducts = Product::with('brand')->whereIn('category_id',$categoryDetails['catIds'])->where('status',1);

                // Checking for Dynamic Filters
            $productFilters = ProductsFilter::productFilters();
            foreach ($productFilters as $key => $filter) {
                    // If filter is selected
                if(isset($filter['filter_column']) && isset($data[$filter['filter_column']]) && !empty($filter['filter_column']) && !empty($data[$filter['filter_column']])){
                    $categoryProducts->whereIn($filter['filter_column'],$data[$filter['filter_column']]);
                }
            }

                // checking for Sort
            if(isset($_GET['sort']) && !empty($_GET['sort'])){
                if($_GET['sort']=="product_latest"){
                    $categoryProducts->orderby('products.id','Desc');
                }else if($_GET['sort']=="price_lowest"){
                    $categoryProducts->orderby('products.product_price','Asc');
                }else if($_GET['sort']=="price_highest"){
                    $categoryProducts->orderby('products.product_price','Desc');
                }else if($_GET['sort']=="name_z_a"){
                    $categoryProducts->orderby('products.product_name','Desc');
                }else if($_GET['sort']=="name_a_z"){
                    $categoryProducts->orderby('products.product_name','Asc');
                }
            }

                // checking for Size
            if(isset($data['size']) && !empty($data['size'])){
                $productIds = ProductsAttribute::select('product_id')->whereIn('size',$data['size'])->pluck('product_id')->toArray();
                $categoryProducts->whereIn('products.id',$productIds);
            }

                // checking for Color
            if(isset($data['color']) && !empty($data['color'])){
                $productIds = Product::select('id')->whereIn('product_color',$data['color'])->pluck('id')->toArray();
                $categoryProducts->whereIn('products.id',$productIds);
            }

                // checking for Price
                /*if(isset($data['price']) && !empty($data['price'])){
                    foreach ($data['price'] as $key => $price) {
                        $priceArr = explode("-",$price);
                        $productIds[] = Product::select('id')->whereBetween('product_price',[$priceArr[0],$priceArr[1]])->pluck('id')->toArray();
                    }
                    $productIds = call_user_func_array('array_merge', $productIds);
                    $categoryProducts->whereIn('products.id',$productIds);
                }*/

                // checking for Price
                $productIds = array();
                if(isset($data['price']) && !empty($data['price'])){
                    foreach ($data['price'] as $key => $price) {
                        $priceArr = explode("-",$price);
                        if(isset($priceArr[0]) && isset($priceArr[1])){
                            $productIds[] = Product::select('id')->whereBetween('product_price',[$priceArr[0],$priceArr[1]])->pluck('id')->toArray();    
                        }
                    }
                    $productIds = array_unique(array_flatten($productIds));
                    $categoryProducts->whereIn('products.id',$productIds);
                }

                // checking for Brand
                if(isset($data['brand']) && !empty($data['brand'])){
                    $productIds = Product::select('id')->whereIn('brand_id',$data['brand'])->pluck('id')->toArray();
                    $categoryProducts->whereIn('products.id',$productIds);
                }

                $categoryProducts = $categoryProducts->get();

                foreach ($categoryProducts as $key => $value) {
                    $getDiscountPrice = Product::getDiscountPrice($categoryProducts[$key]['id']);
                    if($getDiscountPrice>0){
                        $categoryProducts[$key]['final_price'] = "Rs.".$getDiscountPrice;  
                    }else{
                        $categoryProducts[$key]['final_price'] = "Rs.".$categoryProducts[$key]['product_price'];
                    }
                    $categoryProducts[$key]['product_image'] = url("/front/images/product_images/small/".$categoryProducts[$key]['product_image']);
                }

                return response()->json(["products" => $categoryProducts],200);
            }else{
                $message = "Category URL is Incorrect!";
                return response()->json(['status'=>false,"message"=>$message],422);
            }
        }
    }
