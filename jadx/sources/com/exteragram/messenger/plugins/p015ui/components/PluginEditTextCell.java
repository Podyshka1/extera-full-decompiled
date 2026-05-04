package com.exteragram.messenger.plugins.p015ui.components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.models.EditTextSetting;
import com.exteragram.messenger.plugins.models.SettingItem;
import java.util.ArrayList;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.EditTextCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class PluginEditTextCell extends EditTextCell {
    private static final int SAVE_DEBOUNCE_MS = 750;
    private EditTextSetting currentSetting;
    private Runnable pendingSaveRunnable;
    private String pluginId;
    private final TextWatcher saveTextWatcher;
    private String valueToSave;

    public PluginEditTextCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, null, false, false, -1, resourcesProvider);
        setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
        TextWatcher textWatcher = new TextWatcher() { // from class: com.exteragram.messenger.plugins.ui.components.PluginEditTextCell.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                PluginEditTextCell.this.valueToSave = charSequence.toString();
                PluginEditTextCell.this.scheduleSave();
            }
        };
        this.saveTextWatcher = textWatcher;
        this.editText.addTextChangedListener(textWatcher);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleSave() {
        Runnable runnable = this.pendingSaveRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        final EditTextSetting editTextSetting = this.currentSetting;
        final String str = editTextSetting != null ? editTextSetting.key : null;
        final String str2 = this.valueToSave;
        final String str3 = this.pluginId;
        if (str == null || str3 == null) {
            return;
        }
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.PluginEditTextCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleSave$1(editTextSetting, str2, str3, str);
            }
        };
        this.pendingSaveRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 750L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleSave$1(final EditTextSetting editTextSetting, final String str, final String str2, final String str3) {
        this.pendingSaveRunnable = null;
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.PluginEditTextCell$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleSave$0(editTextSetting, str, str2, str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleSave$0(EditTextSetting editTextSetting, String str, String str2, String str3) {
        if (editTextSetting.maxLength > 0 && str.length() > editTextSetting.maxLength) {
            PluginsController.getInstance().setPluginSetting(str2, str3, str.substring(0, editTextSetting.maxLength));
        } else {
            PluginsController.getInstance().setPluginSetting(str2, str3, str);
        }
        triggerOnChange(editTextSetting.onChangeCallback, str3, str);
    }

    @Override // org.telegram.p029ui.Cells.EditTextCell
    protected void onFocusChanged(boolean z) {
        super.onFocusChanged(z);
        if (z) {
            return;
        }
        flushPendingSave();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        flushPendingSave();
    }

    private void flushPendingSave() {
        Runnable runnable = this.pendingSaveRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.pendingSaveRunnable.run();
            this.pendingSaveRunnable = null;
        }
    }

    public void bind(String str, EditTextSetting editTextSetting) {
        EditTextSetting editTextSetting2 = this.currentSetting;
        boolean z = editTextSetting2 != null && TextUtils.equals(editTextSetting2.key, editTextSetting.key);
        if (!z) {
            flushPendingSave();
        }
        this.pluginId = str;
        this.currentSetting = editTextSetting;
        setWatchersEnabled(false);
        setMultiline(editTextSetting.multiline);
        int i = (editTextSetting.multiline ? 131072 : 0) | 573441;
        if (this.editText.getInputType() != i) {
            this.editText.setInputType(i);
        }
        int i2 = editTextSetting.maxLength;
        if (i2 > 0) {
            setShowLimitWhenNear(i2 / Math.min(i2, 4));
        } else {
            setShowLimitWhenNear(-1);
        }
        ArrayList arrayList = new ArrayList();
        InputFilter inputFilterCreateInputFilter = createInputFilter(editTextSetting.mask);
        if (inputFilterCreateInputFilter != null) {
            arrayList.add(inputFilterCreateInputFilter);
        }
        if (editTextSetting.maxLength > 0) {
            arrayList.add(new InputFilter.LengthFilter(editTextSetting.maxLength));
        }
        if (!arrayList.isEmpty()) {
            this.editText.setFilters((InputFilter[]) arrayList.toArray(new InputFilter[0]));
        } else {
            this.editText.setFilters(new InputFilter[0]);
        }
        String pluginSettingString = PluginsController.getInstance().getPluginSettingString(str, editTextSetting.key, editTextSetting.defaultValue);
        if (!TextUtils.equals(pluginSettingString, this.editText.getText().toString())) {
            if (this.editText.hasFocus() && z) {
                setWatchersEnabled(true);
                return;
            }
            setText(pluginSettingString);
        }
        this.valueToSave = pluginSettingString;
        String str2 = editTextSetting.hint;
        if (str2 != null) {
            this.editText.setHint(str2);
        }
        setWatchersEnabled(true);
    }

    private void setWatchersEnabled(boolean z) {
        if (z) {
            this.editText.removeTextChangedListener(this.saveTextWatcher);
            this.editText.addTextChangedListener(this.saveTextWatcher);
        } else {
            this.editText.removeTextChangedListener(this.saveTextWatcher);
        }
    }

    public static class Factory extends UItem.UItemFactory {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean isClickable() {
            return false;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public PluginEditTextCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new PluginEditTextCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            if (view instanceof PluginEditTextCell) {
                PluginEditTextCell pluginEditTextCell = (PluginEditTextCell) view;
                SettingItem settingItem = uItem.settingItem;
                if (settingItem instanceof EditTextSetting) {
                    EditTextSetting editTextSetting = (EditTextSetting) settingItem;
                    Object obj = uItem.object;
                    if (obj instanceof Plugin) {
                        pluginEditTextCell.bind(((Plugin) obj).getId(), editTextSetting);
                        pluginEditTextCell.setDivider(z);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: as */
        public static UItem m262as(Plugin plugin, EditTextSetting editTextSetting) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.object = plugin;
            uItemOfFactory.settingItem = editTextSetting;
            return uItemOfFactory;
        }
    }

    private void triggerOnChange(final PyObject pyObject, final String str, final Object obj) {
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.PluginEditTextCell$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$triggerOnChange$2(pyObject, obj, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerOnChange$2(PyObject pyObject, Object obj, String str) {
        if (pyObject != null) {
            try {
                pyObject.call(obj);
            } catch (Exception e) {
                FileLog.m1135e("Error executing on_change callback for " + this.pluginId + "/" + str, e);
            }
        }
    }

    private InputFilter createInputFilter(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Pattern patternCompile = Pattern.compile(str);
            return new InputFilter() { // from class: com.exteragram.messenger.plugins.ui.components.PluginEditTextCell$$ExternalSyntheticLambda2
                @Override // android.text.InputFilter
                public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                    return PluginEditTextCell.m2668$r8$lambda$21LFMDbklwashUcrD_hg0JMOJw(patternCompile, charSequence, i, i2, spanned, i3, i4);
                }
            };
        } catch (PatternSyntaxException e) {
            FileLog.m1135e("Invalid mask for EditText: " + str, e);
            return null;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$21LFMD-bklwashUcrD_hg0JMOJw, reason: not valid java name */
    public static /* synthetic */ CharSequence m2668$r8$lambda$21LFMDbklwashUcrD_hg0JMOJw(Pattern pattern, CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder(i2 - i);
        boolean z = true;
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (pattern.matcher(String.valueOf(cCharAt)).matches()) {
                sb.append(cCharAt);
            } else {
                z = false;
            }
            i++;
        }
        if (z) {
            return null;
        }
        return sb.toString();
    }
}
