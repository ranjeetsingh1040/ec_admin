<?php

namespace App\Http\Controllers\Settings;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Exception;
use App\Models\Pincode;

class PincodeController extends Controller
{

    public function index()
    {
        $pincode = Pincode::where('seller_id', auth()->user()->id)->paginate(10);
        return $pincode;
    }
    public function store(Request $request)
    {
        $request->validate(
            [
                'pincode' => 'required|digits:6',
                'delivered' => 'required|numeric',
            ]
        );
        try {
            $pincode = new Pincode();
            $pincode->pincode = $request->pincode;
            $pincode->delivered = $request->delivered;
            $pincode->seller_id = $request->seller_id;
            $pincode->status = 1;
            $pincode->save();
            return response()->json(['success' => true, 'message' => 'Saved Successfully'], 200);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        }
    }

    public function edit($id)
    {
        $pincode = Pincode::where('id', $id)->first();
        if (is_null($pincode)) {
            return response()->json(['error' => 422, 'message' => 'Unprocessable Entity'], 422);
        } elseif (auth()->user()->id != $pincode->seller_id) {
            return response()->json(['error' => 403, 'message' => 'Forbidden'], 403);
        }
        return $pincode;
    }
    public function update(Request $request, $id)
    {
        $request->validate(
            [
                'pincode' => 'required|digits:6',
                'delivered' => 'required|numeric',
            ]
        );
        try {
            $pincode = Pincode::find($id);
            if (is_null($pincode)) {
                return response()->json(['error' => 422, 'message' => 'Unprocessable Entity'], 422);
            } elseif (auth()->user()->id != $pincode->seller_id) {
                return response()->json(['error' => 403, 'message' => 'Forbidden'], 403);
            }
            $pincode->pincode = $request->pincode;
            $pincode->delivered = $request->delivered;
            $pincode->seller_id = $request->seller_id;
            $pincode->status = 1;
            $pincode->save();
            return response()->json(['success' => true, 'message' => 'Updated Successfully'], 200);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        }
    }
    public function destroy($id)
    {
        try {

            $pincode = Pincode::where('id', $id)->first();
            if (is_null($pincode)) {
                return response()->json(['error' => 422, 'message' => 'Unprocessable Entity'], 422);
            } elseif (auth()->user()->id != $pincode->seller_id) {
                return response()->json(['error' => 403, 'message' => 'Forbidden'], 403);
            }
            $pincode->delete();
            return response()->json(['success' => true, 'message' => 'Deleted Successfully'], 200);
        } catch (Exception $e) {

            return response()->json(['success' => false, 'message' => $e->getMessage()], 422);
        }
    }

    public function pincodecheck($seller_id, $pincode)
    {
        // return response("sfdfdadfdsf");
        // die;
        $res = [];
        try {
            $pincode = Pincode::where('seller_id', $seller_id)->Where('pincode', $pincode)->get()->first();
            if (is_null($pincode)) {
                // return response()->json(['error' => 422, 'message' => 'Unprocessable Entity'], 422);
                $res['message'] = "not allow";
            }

            // $pincode = PincodeRegion::with('region')->where('pincode', $pincode)->get();
            return $pincode;
        } catch (Exception $e) {
            $res['message'] = $e->getMessage();
            return $res;
        }
    }
}
