package com.yandex.mapkit.styling;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ProportionFunction implements Serializable {
    private ConstantFunctionPoints constantFunction;
    private LinearTiltFunctionPoints tiltFunction;
    private LinearZoomFunctionPoints zoomFunction;
    private BilinearFunctionMatrix zoomTiltFunction;

    public static ProportionFunction fromConstantFunction(ConstantFunctionPoints constantFunctionPoints) {
        if (constantFunctionPoints == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"constantFunction\" cannot be null");
            return null;
        }
        ProportionFunction proportionFunction = new ProportionFunction();
        proportionFunction.constantFunction = constantFunctionPoints;
        return proportionFunction;
    }

    public static ProportionFunction fromZoomFunction(LinearZoomFunctionPoints linearZoomFunctionPoints) {
        if (linearZoomFunctionPoints == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"zoomFunction\" cannot be null");
            return null;
        }
        ProportionFunction proportionFunction = new ProportionFunction();
        proportionFunction.zoomFunction = linearZoomFunctionPoints;
        return proportionFunction;
    }

    public static ProportionFunction fromTiltFunction(LinearTiltFunctionPoints linearTiltFunctionPoints) {
        if (linearTiltFunctionPoints == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"tiltFunction\" cannot be null");
            return null;
        }
        ProportionFunction proportionFunction = new ProportionFunction();
        proportionFunction.tiltFunction = linearTiltFunctionPoints;
        return proportionFunction;
    }

    public static ProportionFunction fromZoomTiltFunction(BilinearFunctionMatrix bilinearFunctionMatrix) {
        if (bilinearFunctionMatrix == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"zoomTiltFunction\" cannot be null");
            return null;
        }
        ProportionFunction proportionFunction = new ProportionFunction();
        proportionFunction.zoomTiltFunction = bilinearFunctionMatrix;
        return proportionFunction;
    }

    public ConstantFunctionPoints getConstantFunction() {
        return this.constantFunction;
    }

    public LinearZoomFunctionPoints getZoomFunction() {
        return this.zoomFunction;
    }

    public LinearTiltFunctionPoints getTiltFunction() {
        return this.tiltFunction;
    }

    public BilinearFunctionMatrix getZoomTiltFunction() {
        return this.zoomTiltFunction;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.constantFunction = (ConstantFunctionPoints) archive.add(this.constantFunction, true, (Class<ConstantFunctionPoints>) ConstantFunctionPoints.class);
        this.zoomFunction = (LinearZoomFunctionPoints) archive.add(this.zoomFunction, true, (Class<LinearZoomFunctionPoints>) LinearZoomFunctionPoints.class);
        this.tiltFunction = (LinearTiltFunctionPoints) archive.add(this.tiltFunction, true, (Class<LinearTiltFunctionPoints>) LinearTiltFunctionPoints.class);
        this.zoomTiltFunction = (BilinearFunctionMatrix) archive.add(this.zoomTiltFunction, true, (Class<BilinearFunctionMatrix>) BilinearFunctionMatrix.class);
    }
}
