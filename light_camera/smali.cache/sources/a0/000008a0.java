package co.openlight.app.renderscript;

import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.FieldPacker;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.Script;
import android.renderscript.ScriptC;
import android.renderscript.Short4;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ScriptC_histogram extends ScriptC {
    private static final String __rs_resource_name = "histogram";
    public static final short const_BLUE_HISTOGRAM_START = 48;
    public static final short const_BRIGHTNESS_HISTOGRAM_START = 0;
    public static final short const_BRIGHTNESS_INDEX = 64;
    public static final short const_CLIP_HIGH = -5;
    public static final short const_CLIP_LOW = 4;
    public static final short const_GREEN_HISTOGRAM_START = 32;
    public static final int const_HALF_INTEGER_MAX = Integer.MIN_VALUE;
    public static final int const_HEIGHT = 1080;
    public static final short const_HISTOGRAM_BITSHIFT = 4;
    public static final short const_HISTOGRAM_BUCKET_COUNT = 16;
    public static final int const_HISTOGRAM_BUFFER_SIZE = 256;
    public static final short const_HISTOGRAM_FRAME_COUNT = 16;
    public static final long const_LOW_4_BITS = 15;
    public static final short const_MAX_GHOSTS = 16;
    public static final short const_RED_HISTOGRAM_START = 16;
    public static final short const_STRIPE_WIDTH = 10;
    public static final int const_WIDTH = 1920;
    private static final int mExportForEachIdx_processFrame = 1;
    private static final int mExportForEachIdx_subtractGhosts = 2;
    private static final int mExportFuncIdx_update_statistics = 0;
    private static final int mExportVarIdx_BLUE_HISTOGRAM_START = 16;
    private static final int mExportVarIdx_BRIGHTNESS_HISTOGRAM_START = 13;
    private static final int mExportVarIdx_BRIGHTNESS_INDEX = 17;
    private static final int mExportVarIdx_CLIP_HIGH = 3;
    private static final int mExportVarIdx_CLIP_LOW = 2;
    private static final int mExportVarIdx_GREEN_HISTOGRAM_START = 15;
    private static final int mExportVarIdx_HALF_INTEGER_MAX = 5;
    private static final int mExportVarIdx_HEIGHT = 20;
    private static final int mExportVarIdx_HISTOGRAM_BITSHIFT = 9;
    private static final int mExportVarIdx_HISTOGRAM_BUCKET_COUNT = 10;
    private static final int mExportVarIdx_HISTOGRAM_BUFFER_SIZE = 12;
    private static final int mExportVarIdx_HISTOGRAM_FRAME_COUNT = 11;
    private static final int mExportVarIdx_LOW_4_BITS = 18;
    private static final int mExportVarIdx_MAX_GHOSTS = 21;
    private static final int mExportVarIdx_PIXEL_BLACK = 6;
    private static final int mExportVarIdx_PIXEL_WHITE = 7;
    private static final int mExportVarIdx_RED_HISTOGRAM_START = 14;
    private static final int mExportVarIdx_STRIPE_WIDTH = 4;
    private static final int mExportVarIdx_WIDTH = 19;
    private static final int mExportVarIdx_ghostIndex = 23;
    private static final int mExportVarIdx_ghostsToSubtract = 25;
    private static final int mExportVarIdx_hasGhosts = 22;
    private static final int mExportVarIdx_inputFrame = 0;
    private static final int mExportVarIdx_statistics = 1;
    private static final int mExportVarIdx_subtractCurrentGhost = 24;
    private static final int mExportVarIdx_zebraIsEnabled = 8;
    private Element __ALLOCATION;
    private Element __I32;
    private Element __I8;
    private Element __U32;
    private Element __U8;
    private Element __U8_4;
    private FieldPacker __rs_fp_ALLOCATION;
    private FieldPacker __rs_fp_I32;
    private FieldPacker __rs_fp_I8;
    private FieldPacker __rs_fp_U32;
    private FieldPacker __rs_fp_U8;
    private FieldPacker __rs_fp_U8_4;
    private short mExportVar_BLUE_HISTOGRAM_START;
    private short mExportVar_BRIGHTNESS_HISTOGRAM_START;
    private short mExportVar_BRIGHTNESS_INDEX;
    private short mExportVar_CLIP_HIGH;
    private short mExportVar_CLIP_LOW;
    private short mExportVar_GREEN_HISTOGRAM_START;
    private int mExportVar_HALF_INTEGER_MAX;
    private int mExportVar_HEIGHT;
    private short mExportVar_HISTOGRAM_BITSHIFT;
    private short mExportVar_HISTOGRAM_BUCKET_COUNT;
    private int mExportVar_HISTOGRAM_BUFFER_SIZE;
    private short mExportVar_HISTOGRAM_FRAME_COUNT;
    private long mExportVar_LOW_4_BITS;
    private short mExportVar_MAX_GHOSTS;
    private Short4 mExportVar_PIXEL_BLACK;
    private Short4 mExportVar_PIXEL_WHITE;
    private short mExportVar_RED_HISTOGRAM_START;
    private short mExportVar_STRIPE_WIDTH;
    private int mExportVar_WIDTH;
    private short mExportVar_ghostIndex;
    private long mExportVar_ghostsToSubtract;
    private short mExportVar_hasGhosts;
    private Allocation mExportVar_inputFrame;
    private Allocation mExportVar_statistics;
    private byte mExportVar_subtractCurrentGhost;
    private int mExportVar_zebraIsEnabled;

    public ScriptC_histogram(RenderScript renderScript) {
        super(renderScript, __rs_resource_name, histogramBitCode.getBitCode32(), histogramBitCode.getBitCode64());
        this.__ALLOCATION = Element.ALLOCATION(renderScript);
        this.mExportVar_CLIP_LOW = (short) 4;
        this.__U8 = Element.U8(renderScript);
        this.mExportVar_CLIP_HIGH = (short) -5;
        this.mExportVar_STRIPE_WIDTH = (short) 10;
        this.mExportVar_HALF_INTEGER_MAX = Integer.MIN_VALUE;
        this.__I32 = Element.I32(renderScript);
        this.mExportVar_PIXEL_BLACK = new Short4();
        this.mExportVar_PIXEL_BLACK.x = (short) 0;
        this.mExportVar_PIXEL_BLACK.y = (short) 0;
        this.mExportVar_PIXEL_BLACK.z = (short) 0;
        this.mExportVar_PIXEL_BLACK.w = (short) -1;
        this.__U8_4 = Element.U8_4(renderScript);
        this.mExportVar_PIXEL_WHITE = new Short4();
        this.mExportVar_PIXEL_WHITE.x = (short) -1;
        this.mExportVar_PIXEL_WHITE.y = (short) -1;
        this.mExportVar_PIXEL_WHITE.z = (short) -1;
        this.mExportVar_PIXEL_WHITE.w = (short) -1;
        this.mExportVar_zebraIsEnabled = 0;
        this.mExportVar_HISTOGRAM_BITSHIFT = (short) 4;
        this.mExportVar_HISTOGRAM_BUCKET_COUNT = (short) 16;
        this.mExportVar_HISTOGRAM_FRAME_COUNT = (short) 16;
        this.mExportVar_HISTOGRAM_BUFFER_SIZE = 256;
        this.mExportVar_BRIGHTNESS_HISTOGRAM_START = (short) 0;
        this.mExportVar_RED_HISTOGRAM_START = (short) 16;
        this.mExportVar_GREEN_HISTOGRAM_START = (short) 32;
        this.mExportVar_BLUE_HISTOGRAM_START = (short) 48;
        this.mExportVar_BRIGHTNESS_INDEX = (short) 64;
        this.mExportVar_LOW_4_BITS = 15L;
        this.__U32 = Element.U32(renderScript);
        this.mExportVar_WIDTH = const_WIDTH;
        this.mExportVar_HEIGHT = const_HEIGHT;
        this.mExportVar_MAX_GHOSTS = (short) 16;
        this.mExportVar_hasGhosts = (short) 0;
        this.mExportVar_ghostIndex = (short) 0;
        this.mExportVar_subtractCurrentGhost = (byte) 1;
        this.__I8 = Element.I8(renderScript);
        this.mExportVar_ghostsToSubtract = 0L;
    }

    public synchronized void set_inputFrame(Allocation allocation) {
        setVar(0, allocation);
        this.mExportVar_inputFrame = allocation;
    }

    public Allocation get_inputFrame() {
        return this.mExportVar_inputFrame;
    }

    public Script.FieldID getFieldID_inputFrame() {
        return createFieldID(0, null);
    }

    public synchronized void set_statistics(Allocation allocation) {
        setVar(1, allocation);
        this.mExportVar_statistics = allocation;
    }

    public Allocation get_statistics() {
        return this.mExportVar_statistics;
    }

    public Script.FieldID getFieldID_statistics() {
        return createFieldID(1, null);
    }

    public short get_CLIP_LOW() {
        return this.mExportVar_CLIP_LOW;
    }

    public Script.FieldID getFieldID_CLIP_LOW() {
        return createFieldID(2, null);
    }

    public short get_CLIP_HIGH() {
        return this.mExportVar_CLIP_HIGH;
    }

    public Script.FieldID getFieldID_CLIP_HIGH() {
        return createFieldID(3, null);
    }

    public short get_STRIPE_WIDTH() {
        return this.mExportVar_STRIPE_WIDTH;
    }

    public Script.FieldID getFieldID_STRIPE_WIDTH() {
        return createFieldID(4, null);
    }

    public int get_HALF_INTEGER_MAX() {
        return this.mExportVar_HALF_INTEGER_MAX;
    }

    public Script.FieldID getFieldID_HALF_INTEGER_MAX() {
        return createFieldID(5, null);
    }

    public Short4 get_PIXEL_BLACK() {
        return this.mExportVar_PIXEL_BLACK;
    }

    public Script.FieldID getFieldID_PIXEL_BLACK() {
        return createFieldID(6, null);
    }

    public Short4 get_PIXEL_WHITE() {
        return this.mExportVar_PIXEL_WHITE;
    }

    public Script.FieldID getFieldID_PIXEL_WHITE() {
        return createFieldID(7, null);
    }

    public synchronized void set_zebraIsEnabled(int i) {
        setVar(8, i);
        this.mExportVar_zebraIsEnabled = i;
    }

    public int get_zebraIsEnabled() {
        return this.mExportVar_zebraIsEnabled;
    }

    public Script.FieldID getFieldID_zebraIsEnabled() {
        return createFieldID(8, null);
    }

    public short get_HISTOGRAM_BITSHIFT() {
        return this.mExportVar_HISTOGRAM_BITSHIFT;
    }

    public Script.FieldID getFieldID_HISTOGRAM_BITSHIFT() {
        return createFieldID(9, null);
    }

    public short get_HISTOGRAM_BUCKET_COUNT() {
        return this.mExportVar_HISTOGRAM_BUCKET_COUNT;
    }

    public Script.FieldID getFieldID_HISTOGRAM_BUCKET_COUNT() {
        return createFieldID(10, null);
    }

    public short get_HISTOGRAM_FRAME_COUNT() {
        return this.mExportVar_HISTOGRAM_FRAME_COUNT;
    }

    public Script.FieldID getFieldID_HISTOGRAM_FRAME_COUNT() {
        return createFieldID(11, null);
    }

    public int get_HISTOGRAM_BUFFER_SIZE() {
        return this.mExportVar_HISTOGRAM_BUFFER_SIZE;
    }

    public Script.FieldID getFieldID_HISTOGRAM_BUFFER_SIZE() {
        return createFieldID(12, null);
    }

    public short get_BRIGHTNESS_HISTOGRAM_START() {
        return this.mExportVar_BRIGHTNESS_HISTOGRAM_START;
    }

    public Script.FieldID getFieldID_BRIGHTNESS_HISTOGRAM_START() {
        return createFieldID(13, null);
    }

    public short get_RED_HISTOGRAM_START() {
        return this.mExportVar_RED_HISTOGRAM_START;
    }

    public Script.FieldID getFieldID_RED_HISTOGRAM_START() {
        return createFieldID(14, null);
    }

    public short get_GREEN_HISTOGRAM_START() {
        return this.mExportVar_GREEN_HISTOGRAM_START;
    }

    public Script.FieldID getFieldID_GREEN_HISTOGRAM_START() {
        return createFieldID(15, null);
    }

    public short get_BLUE_HISTOGRAM_START() {
        return this.mExportVar_BLUE_HISTOGRAM_START;
    }

    public Script.FieldID getFieldID_BLUE_HISTOGRAM_START() {
        return createFieldID(16, null);
    }

    public short get_BRIGHTNESS_INDEX() {
        return this.mExportVar_BRIGHTNESS_INDEX;
    }

    public Script.FieldID getFieldID_BRIGHTNESS_INDEX() {
        return createFieldID(17, null);
    }

    public long get_LOW_4_BITS() {
        return this.mExportVar_LOW_4_BITS;
    }

    public Script.FieldID getFieldID_LOW_4_BITS() {
        return createFieldID(18, null);
    }

    public int get_WIDTH() {
        return this.mExportVar_WIDTH;
    }

    public Script.FieldID getFieldID_WIDTH() {
        return createFieldID(19, null);
    }

    public int get_HEIGHT() {
        return this.mExportVar_HEIGHT;
    }

    public Script.FieldID getFieldID_HEIGHT() {
        return createFieldID(20, null);
    }

    public short get_MAX_GHOSTS() {
        return this.mExportVar_MAX_GHOSTS;
    }

    public Script.FieldID getFieldID_MAX_GHOSTS() {
        return createFieldID(21, null);
    }

    public synchronized void set_hasGhosts(short s) {
        if (this.__rs_fp_U8 != null) {
            this.__rs_fp_U8.reset();
        } else {
            this.__rs_fp_U8 = new FieldPacker(1);
        }
        this.__rs_fp_U8.addU8(s);
        setVar(22, this.__rs_fp_U8);
        this.mExportVar_hasGhosts = s;
    }

    public short get_hasGhosts() {
        return this.mExportVar_hasGhosts;
    }

    public Script.FieldID getFieldID_hasGhosts() {
        return createFieldID(22, null);
    }

    public synchronized void set_ghostIndex(short s) {
        if (this.__rs_fp_U8 != null) {
            this.__rs_fp_U8.reset();
        } else {
            this.__rs_fp_U8 = new FieldPacker(1);
        }
        this.__rs_fp_U8.addU8(s);
        setVar(23, this.__rs_fp_U8);
        this.mExportVar_ghostIndex = s;
    }

    public short get_ghostIndex() {
        return this.mExportVar_ghostIndex;
    }

    public Script.FieldID getFieldID_ghostIndex() {
        return createFieldID(23, null);
    }

    public synchronized void set_subtractCurrentGhost(byte b) {
        if (this.__rs_fp_I8 != null) {
            this.__rs_fp_I8.reset();
        } else {
            this.__rs_fp_I8 = new FieldPacker(1);
        }
        this.__rs_fp_I8.addI8(b);
        setVar(24, this.__rs_fp_I8);
        this.mExportVar_subtractCurrentGhost = b;
    }

    public byte get_subtractCurrentGhost() {
        return this.mExportVar_subtractCurrentGhost;
    }

    public Script.FieldID getFieldID_subtractCurrentGhost() {
        return createFieldID(24, null);
    }

    public synchronized void set_ghostsToSubtract(long j) {
        if (this.__rs_fp_U32 != null) {
            this.__rs_fp_U32.reset();
        } else {
            this.__rs_fp_U32 = new FieldPacker(4);
        }
        this.__rs_fp_U32.addU32(j);
        setVar(25, this.__rs_fp_U32);
        this.mExportVar_ghostsToSubtract = j;
    }

    public long get_ghostsToSubtract() {
        return this.mExportVar_ghostsToSubtract;
    }

    public Script.FieldID getFieldID_ghostsToSubtract() {
        return createFieldID(25, null);
    }

    public Script.KernelID getKernelID_processFrame() {
        return createKernelID(1, 58, null, null);
    }

    public void forEach_processFrame(Allocation allocation) {
        forEach_processFrame(allocation, null);
    }

    public void forEach_processFrame(Allocation allocation, Script.LaunchOptions launchOptions) {
        if (!allocation.getType().getElement().isCompatible(this.__U8_4)) {
            throw new RSRuntimeException("Type mismatch with U8_4!");
        }
        forEach(1, (Allocation) null, allocation, (FieldPacker) null, launchOptions);
    }

    public Script.KernelID getKernelID_subtractGhosts() {
        return createKernelID(2, 58, null, null);
    }

    public void forEach_subtractGhosts(Allocation allocation) {
        forEach_subtractGhosts(allocation, null);
    }

    public void forEach_subtractGhosts(Allocation allocation, Script.LaunchOptions launchOptions) {
        if (!allocation.getType().getElement().isCompatible(this.__U8_4)) {
            throw new RSRuntimeException("Type mismatch with U8_4!");
        }
        forEach(2, (Allocation) null, allocation, (FieldPacker) null, launchOptions);
    }

    public Script.InvokeID getInvokeID_update_statistics() {
        return createInvokeID(0);
    }

    public void invoke_update_statistics() {
        invoke(0);
    }
}