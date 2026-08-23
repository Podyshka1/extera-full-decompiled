package org.telegram.ui.Components.Paint;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.telegram.messenger.ApplicationLoader;

/* JADX INFO: loaded from: classes3.dex */
public class PersistColorPalette {
    public static final int COLORS_COUNT;
    private static final List<Integer> DEFAULT_MODIFIABLE_COLORS;
    public static final int MODIFIABLE_COLORS_COUNT;
    private static final List<Integer> PRESET_COLORS;
    public static final int PRESET_COLORS_COUNT;
    private static PersistColorPalette[] instances;
    private final HashMap<Integer, Integer> brushColor;
    private final List<Integer> colors;
    private int currentAlignment;
    private int currentBrush;
    private int currentTextType;
    private String currentTypeface;
    private float currentWeight;
    private boolean fillShapes;
    private boolean inTextMode;
    private final SharedPreferences mConfig;
    private boolean needSaveBrushColor;
    private List<Integer> pendingChange;

    static {
        List<Integer> listAsList = Arrays.asList(-2645892, -8409090, -5926949, -2386514, -4531041);
        DEFAULT_MODIFIABLE_COLORS = listAsList;
        List<Integer> listAsList2 = Arrays.asList(-47814, -30208, -10742, -13318311, -10230046, -16087809, -4236558, -16777216, -1);
        PRESET_COLORS = listAsList2;
        int size = listAsList.size();
        MODIFIABLE_COLORS_COUNT = size;
        int size2 = listAsList2.size();
        PRESET_COLORS_COUNT = size2;
        COLORS_COUNT = size + size2;
        instances = new PersistColorPalette[16];
    }

    public PersistColorPalette(int i) {
        int i2 = COLORS_COUNT;
        this.colors = new ArrayList(i2);
        this.brushColor = new HashMap<>(Brush.BRUSHES_LIST.size());
        this.pendingChange = new ArrayList(i2);
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("photo_color_palette_" + i, 0);
        this.mConfig = sharedPreferences;
        this.currentBrush = sharedPreferences.getInt("brush", 0);
        this.currentWeight = sharedPreferences.getFloat("weight", 0.5f);
        this.currentTypeface = sharedPreferences.getString("typeface", "roboto");
        this.currentAlignment = sharedPreferences.getInt("text_alignment", 0);
        this.currentTextType = sharedPreferences.getInt("text_type", 0);
        this.fillShapes = sharedPreferences.getBoolean("fill_shapes", false);
        loadColors();
    }

    public static PersistColorPalette getInstance(int i) {
        PersistColorPalette[] persistColorPaletteArr = instances;
        if (persistColorPaletteArr[i] == null) {
            persistColorPaletteArr[i] = new PersistColorPalette(i);
        }
        return instances[i];
    }

    public int getCurrentTextType() {
        return this.currentTextType;
    }

    public void setCurrentTextType(int i) {
        this.currentTextType = i;
        this.mConfig.edit().putInt("text_type", i).apply();
    }

    public void setInTextMode(boolean z) {
        if (this.inTextMode != z) {
            this.inTextMode = z;
            if (z) {
                setCurrentBrush(-1, false);
            } else {
                setCurrentBrush(this.mConfig.getInt("brush", 0), false);
            }
        }
    }

    public int getCurrentAlignment() {
        return this.currentAlignment;
    }

    public void setCurrentAlignment(int i) {
        this.currentAlignment = i;
        this.mConfig.edit().putInt("text_alignment", i).apply();
    }

    public String getCurrentTypeface() {
        return this.currentTypeface;
    }

    public void setCurrentTypeface(String str) {
        this.currentTypeface = str;
        this.mConfig.edit().putString("typeface", str).apply();
    }

    public float getWeight(String str, float f) {
        return this.mConfig.getFloat("weight_" + str, f);
    }

    public void setWeight(String str, float f) {
        this.mConfig.edit().putFloat("weight_" + str, f).apply();
    }

    public float getCurrentWeight() {
        return this.currentWeight;
    }

    public void setCurrentWeight(float f) {
        this.currentWeight = f;
        this.mConfig.edit().putFloat("weight", f).apply();
    }

    public void setCurrentBrush(int i) {
        setCurrentBrush(i, true);
    }

    public void setCurrentBrush(int i, boolean z) {
        this.currentBrush = i;
        if (z) {
            this.mConfig.edit().putInt("brush", i).apply();
        }
        Integer num = this.brushColor.get(Integer.valueOf(i));
        if (num != null) {
            selectColor(num.intValue(), false);
            saveColors();
        }
    }

    public boolean getFillShapes() {
        return this.fillShapes;
    }

    public void toggleFillShapes() {
        this.fillShapes = !this.fillShapes;
        this.mConfig.edit().putBoolean("fill_shapes", this.fillShapes).apply();
    }

    public void cleanup() {
        this.pendingChange.clear();
        this.pendingChange.addAll(DEFAULT_MODIFIABLE_COLORS);
        SharedPreferences.Editor editorEdit = this.mConfig.edit();
        for (int i = 0; i < Brush.BRUSHES_LIST.size(); i++) {
            editorEdit.remove("brush_color_" + i);
        }
        editorEdit.remove("brush_color_-1");
        this.brushColor.clear();
        editorEdit.apply();
        saveColors();
    }

    private void checkIndex(int i) {
        if (i < 0 || i >= COLORS_COUNT) {
            throw new IndexOutOfBoundsException("Color palette index should be in range 0 ... " + COLORS_COUNT);
        }
    }

    public int getColor(int i) {
        checkIndex(i);
        List<Integer> allColors = getAllColors();
        if (i >= allColors.size()) {
            int i2 = PRESET_COLORS_COUNT;
            if (i < i2) {
                return PRESET_COLORS.get(i).intValue();
            }
            return DEFAULT_MODIFIABLE_COLORS.get(i - i2).intValue();
        }
        return allColors.get(i).intValue();
    }

    public int getCurrentColor() {
        Integer numValueOf = this.brushColor.get(Integer.valueOf(this.currentBrush));
        if (numValueOf == null) {
            numValueOf = Integer.valueOf((int) this.mConfig.getLong("brush_color_" + this.currentBrush, this.currentBrush == -1 ? -1L : Brush.BRUSHES_LIST.get(r2).getDefaultColor()));
            this.brushColor.put(Integer.valueOf(this.currentBrush), numValueOf);
        }
        return numValueOf.intValue();
    }

    public int getCurrentColorPosition() {
        int currentColor = getCurrentColor();
        List<Integer> allColors = getAllColors();
        for (int i = 0; i < allColors.size(); i++) {
            if (allColors.get(i).intValue() == currentColor) {
                return i;
            }
        }
        return 0;
    }

    private List<Integer> getAllColors() {
        ArrayList arrayList = new ArrayList(PRESET_COLORS);
        arrayList.addAll(this.colors);
        return arrayList;
    }

    public void selectColor(int i) {
        selectColor(i, true);
    }

    public void selectColor(int i, boolean z) {
        List<Integer> list;
        int iIndexOf = getAllColors().indexOf(Integer.valueOf(i));
        if (iIndexOf != -1) {
            if (z) {
                setCurrentBrushColorByColorIndex(iIndexOf);
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList(this.pendingChange.isEmpty() ? this.colors : this.pendingChange);
        this.pendingChange.clear();
        this.pendingChange.add(Integer.valueOf(i));
        int i2 = 0;
        while (true) {
            int size = arrayList.size() - 1;
            list = this.pendingChange;
            if (i2 >= size) {
                break;
            }
            list.add((Integer) arrayList.get(i2));
            i2++;
        }
        int size2 = list.size();
        List<Integer> list2 = DEFAULT_MODIFIABLE_COLORS;
        int size3 = list2.size();
        List<Integer> list3 = this.pendingChange;
        if (size2 < size3) {
            int size4 = list3.size();
            while (true) {
                List<Integer> list4 = DEFAULT_MODIFIABLE_COLORS;
                if (size4 >= list4.size()) {
                    break;
                }
                this.pendingChange.add(list4.get(size4));
                size4++;
            }
        } else if (list3.size() > list2.size()) {
            this.pendingChange = this.pendingChange.subList(0, list2.size());
        }
        if (z) {
            this.brushColor.put(Integer.valueOf(this.currentBrush), Integer.valueOf(i));
            this.needSaveBrushColor = true;
        }
    }

    public void setCurrentBrushColorByColorIndex(int i) {
        this.brushColor.put(Integer.valueOf(this.currentBrush), Integer.valueOf(getColor(i)));
        this.needSaveBrushColor = true;
    }

    private void loadColors() {
        int i = 0;
        for (int i2 = 0; i2 < MODIFIABLE_COLORS_COUNT; i2++) {
            this.colors.add(Integer.valueOf((int) this.mConfig.getLong("color_" + i2, DEFAULT_MODIFIABLE_COLORS.get(i2).intValue())));
        }
        while (true) {
            int size = Brush.BRUSHES_LIST.size();
            SharedPreferences sharedPreferences = this.mConfig;
            if (i < size) {
                this.brushColor.put(Integer.valueOf(i), Integer.valueOf((int) sharedPreferences.getLong("brush_color_" + i, Brush.BRUSHES_LIST.get(i).getDefaultColor())));
                i++;
            } else {
                this.brushColor.put(-1, Integer.valueOf((int) sharedPreferences.getLong("brush_color_-1", -1L)));
                return;
            }
        }
    }

    public void resetCurrentColor() {
        setCurrentBrush(0);
    }

    public void saveColors() {
        if (!this.pendingChange.isEmpty() || this.needSaveBrushColor) {
            SharedPreferences.Editor editorEdit = this.mConfig.edit();
            if (!this.pendingChange.isEmpty()) {
                int i = 0;
                while (i < MODIFIABLE_COLORS_COUNT) {
                    editorEdit.putLong("color_" + i, (i < this.pendingChange.size() ? this.pendingChange : DEFAULT_MODIFIABLE_COLORS).get(i).intValue());
                    i++;
                }
                this.colors.clear();
                this.colors.addAll(this.pendingChange);
                this.pendingChange.clear();
            }
            if (this.needSaveBrushColor) {
                if (this.brushColor.get(Integer.valueOf(this.currentBrush)) != null) {
                    editorEdit.putLong("brush_color_" + this.currentBrush, r1.intValue());
                }
                this.needSaveBrushColor = false;
            }
            editorEdit.apply();
        }
    }
}
