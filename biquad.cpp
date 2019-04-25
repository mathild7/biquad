#include <hls_stream.h>
#include <ap_int.h>

using namespace hls;

//Note:
//https://arachnoid.com/BiQuadDesigner/

void biquad(
	stream<float> &in,
	stream<float> &out,
	float a1,
	float a2,
	float b0,
	float b1,
	float b2,
	ap_uint<1> user_writing
) {
#pragma HLS INTERFACE s_axilite port=user_writing bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=b2 bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=b1 bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=b0 bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=a2 bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=a1 bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE axis register both port=in
#pragma HLS INTERFACE ap_ctrl_none port=return

	if (user_writing == 1) return; //Wait until user finishes writing

	static float x1 = 0.0f;
	static float x2 = 0.0f;
	static float y1 = 0.0f;
	static float y2 = 0.0f;

	float input;
	in >> input;

	float output = input*b0 + x1*b1 + x2*b2 - y1*a1 - y2*a2;

	y2 = y1;
	y1 = output;
	x2 = x1;
	x1 = input;

	out << output;
}
