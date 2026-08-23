package com.yandex.mapkit.map;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ModelStyle implements Serializable {
    private RenderMode renderMode;
    private float scale;
    private UnitType unitType;
    private String variantName;

    public enum RenderMode {
        BUILDING,
        USER_MODEL
    }

    public enum UnitType {
        UNIT,
        NORMALIZED,
        METER
    }

    public ModelStyle(float f, UnitType unitType, RenderMode renderMode, String str) {
        this.scale = 1.0f;
        this.unitType = UnitType.UNIT;
        this.renderMode = RenderMode.USER_MODEL;
        this.variantName = null;
        if (unitType == null) {
            throw new IllegalArgumentException("Required field \"unitType\" cannot be null");
        }
        if (renderMode == null) {
            throw new IllegalArgumentException("Required field \"renderMode\" cannot be null");
        }
        this.scale = f;
        this.unitType = unitType;
        this.renderMode = renderMode;
        this.variantName = str;
    }

    public ModelStyle() {
        this.scale = 1.0f;
        this.unitType = UnitType.UNIT;
        this.renderMode = RenderMode.USER_MODEL;
        this.variantName = null;
    }

    public float getScale() {
        return this.scale;
    }

    public ModelStyle setScale(float f) {
        this.scale = f;
        return this;
    }

    public UnitType getUnitType() {
        return this.unitType;
    }

    public ModelStyle setUnitType(UnitType unitType) {
        if (unitType == null) {
            throw new IllegalArgumentException("Required field \"unitType\" cannot be null");
        }
        this.unitType = unitType;
        return this;
    }

    public RenderMode getRenderMode() {
        return this.renderMode;
    }

    public ModelStyle setRenderMode(RenderMode renderMode) {
        if (renderMode == null) {
            throw new IllegalArgumentException("Required field \"renderMode\" cannot be null");
        }
        this.renderMode = renderMode;
        return this;
    }

    public String getVariantName() {
        return this.variantName;
    }

    public ModelStyle setVariantName(String str) {
        this.variantName = str;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.scale = archive.add(this.scale);
        this.unitType = (UnitType) archive.add(this.unitType, false, (Class<UnitType>) UnitType.class);
        this.renderMode = (RenderMode) archive.add(this.renderMode, false, (Class<RenderMode>) RenderMode.class);
        this.variantName = archive.add(this.variantName, true);
    }
}
