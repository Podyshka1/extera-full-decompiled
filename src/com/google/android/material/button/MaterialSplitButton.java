package com.google.android.material.button;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1349R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialSplitButton extends MaterialButtonGroup {
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_MaterialSplitButton;
    private static final int REQUIRED_BUTTON_COUNT = 2;

    public MaterialSplitButton(Context context) {
        this(context, null);
    }

    public MaterialSplitButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.materialSplitButtonStyle);
    }

    public MaterialSplitButton(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
    }

    @Override // com.google.android.material.button.MaterialButtonGroup, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int i2;
        if (!(view instanceof MaterialButton)) {
            throw new IllegalArgumentException("MaterialSplitButton can only hold MaterialButtons.");
        }
        if (getChildCount() > 2) {
            throw new IllegalArgumentException("MaterialSplitButton can only hold two MaterialButtons.");
        }
        final MaterialButton materialButton = (MaterialButton) view;
        super.addView(view, i, layoutParams);
        if (indexOfChild(view) == 1) {
            materialButton.setCheckable(true);
            materialButton.setA11yClassName(Button.class.getName());
            Resources resources = getResources();
            if (materialButton.isChecked()) {
                i2 = C1349R.string.mtrl_button_expanded_content_description;
            } else {
                i2 = C1349R.string.mtrl_button_collapsed_content_description;
            }
            ViewCompat.setStateDescription(materialButton, resources.getString(i2));
            materialButton.addOnCheckedChangeListener(new MaterialButton.OnCheckedChangeListener() { // from class: com.google.android.material.button.MaterialSplitButton$$ExternalSyntheticLambda0
                @Override // com.google.android.material.button.MaterialButton.OnCheckedChangeListener
                public final void onCheckedChanged(MaterialButton materialButton2, boolean z) {
                    MaterialSplitButton.$r8$lambda$0AaOSuB0iM3T9__daCv7yo8umdw(this.f$0, materialButton, materialButton2, z);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$0AaOSuB0iM3T9__daCv7yo8umdw(MaterialSplitButton materialSplitButton, MaterialButton materialButton, MaterialButton materialButton2, boolean z) {
        int i;
        Resources resources = materialSplitButton.getResources();
        if (z) {
            i = C1349R.string.mtrl_button_expanded_content_description;
        } else {
            i = C1349R.string.mtrl_button_collapsed_content_description;
        }
        ViewCompat.setStateDescription(materialButton, resources.getString(i));
    }
}
