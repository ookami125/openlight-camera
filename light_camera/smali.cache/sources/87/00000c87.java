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
public class ScriptC_shadows extends ScriptC {
    private static final String __rs_resource_name = "shadows";
    private static final int mExportForEachIdx_shadows = 1;
    private static final int mExportFuncIdx_setShadows = 0;
    private Element __U8_4;

    public ScriptC_shadows(RenderScript renderScript) {
        super(renderScript, __rs_resource_name, shadowsBitCode.getBitCode32(), shadowsBitCode.getBitCode64());
        this.__U8_4 = Element.U8_4(renderScript);
    }

    public Script.KernelID getKernelID_shadows() {
        return createKernelID(1, 3, null, null);
    }

    public void forEach_shadows(Allocation allocation, Allocation allocation2) {
        forEach_shadows(allocation, allocation2, null);
    }

    public void forEach_shadows(Allocation allocation, Allocation allocation2, Script.LaunchOptions launchOptions) {
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

    public Script.InvokeID getInvokeID_setShadows() {
        return createInvokeID(0);
    }

    public void invoke_setShadows(float f) {
        FieldPacker fieldPacker = new FieldPacker(4);
        fieldPacker.addF32(f);
        invoke(0, fieldPacker);
    }
}