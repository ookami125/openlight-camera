package openlight.co.camera;

import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.FieldPacker;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.Script;
import android.renderscript.ScriptC;
import android.renderscript.Type;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ScriptC_exposure extends ScriptC {
    private static final String __rs_resource_name = "exposure";
    private static final int mExportForEachIdx_exposure = 1;
    private static final int mExportFuncIdx_setExposure = 0;
    private Element __U8_4;

    public ScriptC_exposure(RenderScript renderScript) {
        super(renderScript, __rs_resource_name, exposureBitCode.getBitCode32(), exposureBitCode.getBitCode64());
        this.__U8_4 = Element.U8_4(renderScript);
    }

    public Script.KernelID getKernelID_exposure() {
        return createKernelID(1, 3, null, null);
    }

    public void forEach_exposure(Allocation allocation, Allocation allocation2) {
        forEach_exposure(allocation, allocation2, null);
    }

    public void forEach_exposure(Allocation allocation, Allocation allocation2, Script.LaunchOptions launchOptions) {
        if (!allocation.getType().getElement().isCompatible(this.__U8_4)) {
            throw new RSRuntimeException("Type mismatch with U8_4!");
        }
        if (!allocation2.getType().getElement().isCompatible(this.__U8_4)) {
            throw new RSRuntimeException("Type mismatch with U8_4!");
        }
        Type type = allocation.getType();
        Type type2 = allocation2.getType();
        if (type.getCount() != type2.getCount() || type.getX() != type2.getX() || type.getY() != type2.getY() || type.getZ() != type2.getZ() || type.hasFaces() != type2.hasFaces() || type.hasMipmaps() != type2.hasMipmaps()) {
            throw new RSRuntimeException("Dimension mismatch between parameters ain and aout!");
        }
        forEach(1, allocation, allocation2, (FieldPacker) null, launchOptions);
    }

    public Script.InvokeID getInvokeID_setExposure() {
        return createInvokeID(0);
    }

    public void invoke_setExposure(float f) {
        FieldPacker fieldPacker = new FieldPacker(4);
        fieldPacker.addF32(f);
        invoke(0, fieldPacker);
    }
}