<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use Validator, File;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = $request->type;
        $title = 'Danh mục Dịch vụ';
        if ($type == 'service') {
            $categories = Category::whereIn('slug', ['internet', 'dich-vu-truyen-hinh', 'dich-vu-camera'])->get();
        } else {
            $title = 'Danh sách Chủ đề';
            $categories = Category::whereNotIn('slug', ['internet', 'dich-vu-truyen-hinh', 'dich-vu-camera'])->get();
        }
        return view('category.categories_list', ['categories' => $categories, 'title' => $title]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required|max:255|regex:/^[a-zA-Z0-9_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽếềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ_(\s)_(\.)_(\,)_(\-)_(\_)]+$/',
                'description' => 'required|max:255',
                'sort_id' => 'required|numeric|integer|min:0',
            ],
            [
                'name.required' => 'Chủ đề không được để trống',
                'name.max' => 'Chủ đề không được nhiều hơn :max kí tự',
                'name.regex' => 'Chủ đề không được chứa kí tự đặc biệt',
                'description.required' => 'Mô tả về Chủ đề không được để trống',
                'max' => 'Mô tả về Chủ đề không được nhiều hơn :max kí tự',
                'sort_id.numeric' => 'Thứ tự sắp xếp phải là số',
                'sort_id.min' => 'Thứ tự sắp xếp phải là số lớn hơn hoặc bằng 0',
                'sort_id.integer' => 'Thứ tự sắp xếp phải là số nguyên',
            ]
        );

        if ($validator->fails()) {
            return response()->json(['is' => 'failed', 'error' => $validator->errors()->all()]);
        }

        $data = $request->all();
        unset($data['_token']);
        $data['slug'] = str_slug($data['name']);

        if(in_array($data['slug'], ['internet', 'dich-vu-truyen-hinh', 'dich-vu-camera'])){
            return response()->json(['is' => 'unsuccess', 'uncomplete' => 'Không được trùng tên danh mục dịch vụ']);
        }
        if ($files = $request->file('thumbnail')) {
            $destinationPath = 'images/categories/'; // upload path
            $time = time();
            $fileName = $time . "" . date('YmdHis') . "" . $files->hashName();
            $files->move($destinationPath, $fileName);
            $data['thumbnail'] = $fileName;
        } else {
            unset($data['thumbnail']);
        }

        $category = Category::create($data);

        if (isset($category)) {
            return response()->json(['is' => 'success', 'complete' => 'Chủ đề được thêm thành công']);
        }
        return response()->json(['is' => 'unsuccess', 'uncomplete' => 'Chủ đề chưa được thêm']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $category = Category::find($id);
        return $category;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required|max:255|regex:/^[a-zA-Z0-9_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽếềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ_(\s)_(\.)_(\,)_(\-)_(\_)]+$/',
                'description' => 'required|max:255',
                'sort_id' => 'required|numeric|integer|min:0',
            ],
            [
                'name.required' => 'Chủ đề không được để trống',
                'name.max' => 'Chủ đề không được nhiều hơn :max kí tự',
                'name.regex' => 'Chủ đề không được chứa kí tự đặc biệt',
                'description.required' => 'Mô tả về Chủ đề không được để trống',
                'max' => 'Mô tả về Chủ đề không được nhiều hơn :max kí tự',
                'sort_id.numeric' => 'Thứ tự sắp xếp phải là số',
                'sort_id.min' => 'Thứ tự sắp xếp phải là số lớn hơn hoặc bằng 0',
                'sort_id.integer' => 'Thứ tự sắp xếp phải là số nguyên',
            ]
        );

        if ($validator->fails()) {
            return response()->json(['is' => 'failed', 'error' => $validator->errors()->all()]);
        } 
        $data = $request->all();
        $category = Category::find($data['id']);
        if ($files = $request->file('thumbnail')) {
            $destinationPath = 'images/categories/'; // upload path
            $time = time();
            $fileName = $time . "" . date('YmdHis') . "" . $files->hashName();
            $files->move($destinationPath, $fileName);
            $data['thumbnail'] = $fileName;
        } else {
            $data['thumbnail'] = $category->thumbnail;
        }
        $data['slug'] = str_slug($data['name']);
        unset($data['_token']);
        unset($data['id']);
        if(in_array($data['slug'], ['internet', 'dich-vu-truyen-hinh', 'dich-vu-camera'])){
            return response()->json(['is' => 'unsuccess', 'uncomplete' => 'Không được trùng tên danh mục dịch vụ']);
        }
        $flag = $category->update($data);
        if ($flag) {
            return response()->json(['is' => 'success', 'complete' => 'Chủ đề  đã được cập nhật']);
        }
        return response()->json(['is' => 'unsuccess', 'uncomplete' => 'Chủ đề  chưa được cập nhật']);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $data = $request->all();
        $category = Category::find($data['id']);
        unset($data['_token']);
        unset($data['id']);
        $flag = $category->update($data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $posts = Category::findOrFail($id)->posts()->delete();
        $category = Category::findOrFail($id)->delete();
    }
}
