package org.telegram.ui.ActionBar;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.SpannedString;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedArrowDrawable;
import org.telegram.ui.Components.AudioPlayerAlert;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.ChatBigEmptyView;
import org.telegram.ui.Components.CheckBox;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.ContextProgressView;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.EditTextEmoji;
import org.telegram.ui.Components.EmptyTextProgressView;
import org.telegram.ui.Components.GroupCreateCheckBox;
import org.telegram.ui.Components.GroupCreateSpan;
import org.telegram.ui.Components.LetterDrawable;
import org.telegram.ui.Components.LineProgressView;
import org.telegram.ui.Components.MessageBackgroundDrawable;
import org.telegram.ui.Components.NumberTextView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RadioButton;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScamDrawable;
import org.telegram.ui.Components.SeekBarView;
import org.telegram.ui.Components.TypefaceSpan;

/* JADX INFO: loaded from: classes6.dex */
public class ThemeDescription {
    public static int FLAG_AB_AM_BACKGROUND = 1048576;
    public static int FLAG_AB_AM_ITEMSCOLOR = 512;
    public static int FLAG_AB_AM_SELECTORCOLOR = 4194304;
    public static int FLAG_AB_AM_TOPBACKGROUND = 2097152;
    public static int FLAG_AB_ITEMSCOLOR = 64;
    public static int FLAG_AB_SEARCH = 134217728;
    public static int FLAG_AB_SEARCHPLACEHOLDER = 67108864;
    public static int FLAG_AB_SELECTORCOLOR = 256;
    public static int FLAG_AB_SUBMENUBACKGROUND = Integer.MIN_VALUE;
    public static int FLAG_AB_SUBMENUITEM = 1073741824;
    public static int FLAG_AB_SUBTITLECOLOR = 1024;
    public static int FLAG_AB_TITLECOLOR = 128;
    public static int FLAG_BACKGROUND = 1;
    public static int FLAG_BACKGROUNDFILTER = 32;
    public static int FLAG_CELLBACKGROUNDCOLOR = 16;
    public static int FLAG_CHECKBOX = 8192;
    public static int FLAG_CHECKBOXCHECK = 16384;
    public static int FLAG_CHECKTAG = 262144;
    public static int FLAG_CURSORCOLOR = 16777216;
    public static int FLAG_DRAWABLESELECTEDSTATE = 65536;
    public static int FLAG_FASTSCROLL = 33554432;
    public static int FLAG_HINTTEXTCOLOR = 8388608;
    public static int FLAG_IMAGECOLOR = 8;
    public static int FLAG_LINKCOLOR = 2;
    public static int FLAG_LISTGLOWCOLOR = 32768;
    public static int FLAG_PROGRESSBAR = 2048;
    public static int FLAG_SECTIONS = 524288;
    public static int FLAG_SELECTOR = 4096;
    public static int FLAG_SELECTORWHITE = 268435456;
    public static int FLAG_SERVICEBACKGROUND = 536870912;
    public static int FLAG_TEXTCOLOR = 4;
    public static int FLAG_USEBACKGROUNDDRAWABLE = 131072;
    private int alphaOverride;
    private HashMap<String, Field> cachedFields;
    private int changeFlags;
    private int currentColor;
    private int currentKey;
    private ThemeDescriptionDelegate delegate;
    private Drawable[] drawablesToUpdate;
    private Class[] listClasses;
    private String[] listClassesFieldName;
    private String lottieLayerName;
    private HashMap<String, Boolean> notFoundCachedFields;
    private Paint[] paintToUpdate;
    private int previousColor;
    private boolean[] previousIsDefault;
    public Theme.ResourcesProvider resourcesProvider;
    private View viewToInvalidate;

    public interface ThemeDescriptionDelegate {
        void didSetColor();

        default void onAnimationProgress(float f) {
        }
    }

    public ThemeDescription(View view, int i, Class[] clsArr, Paint[] paintArr, Drawable[] drawableArr, ThemeDescriptionDelegate themeDescriptionDelegate, int i2, Object obj) {
        this.alphaOverride = -1;
        this.previousIsDefault = new boolean[1];
        this.currentKey = i2;
        this.paintToUpdate = paintArr;
        this.drawablesToUpdate = drawableArr;
        this.viewToInvalidate = view;
        this.changeFlags = i;
        this.listClasses = clsArr;
        this.delegate = themeDescriptionDelegate;
        if (view instanceof EditTextEmoji) {
            this.viewToInvalidate = ((EditTextEmoji) view).getEditText();
        }
    }

    public ThemeDescription(View view, int i, Class[] clsArr, Paint paint, Drawable[] drawableArr, ThemeDescriptionDelegate themeDescriptionDelegate, int i2) {
        this.alphaOverride = -1;
        this.previousIsDefault = new boolean[1];
        this.currentKey = i2;
        if (paint != null) {
            this.paintToUpdate = new Paint[]{paint};
        }
        this.drawablesToUpdate = drawableArr;
        this.viewToInvalidate = view;
        this.changeFlags = i;
        this.listClasses = RecyclerListView.filterThemeDescription(i, clsArr);
        this.delegate = themeDescriptionDelegate;
        View view2 = this.viewToInvalidate;
        if (view2 instanceof EditTextEmoji) {
            this.viewToInvalidate = ((EditTextEmoji) view2).getEditText();
        }
    }

    public ThemeDescription(View view, int i, Class[] clsArr, RLottieDrawable[] rLottieDrawableArr, String str, int i2) {
        this.alphaOverride = -1;
        this.previousIsDefault = new boolean[1];
        this.currentKey = i2;
        this.lottieLayerName = str;
        this.drawablesToUpdate = rLottieDrawableArr;
        this.viewToInvalidate = view;
        this.changeFlags = i;
        this.listClasses = clsArr;
        if (view instanceof EditTextEmoji) {
            this.viewToInvalidate = ((EditTextEmoji) view).getEditText();
        }
    }

    public ThemeDescription(View view, int i, Class[] clsArr, String[] strArr, Paint[] paintArr, Drawable[] drawableArr, ThemeDescriptionDelegate themeDescriptionDelegate, int i2) {
        this(view, i, clsArr, strArr, paintArr, drawableArr, -1, themeDescriptionDelegate, i2);
    }

    public ThemeDescription(View view, int i, Class[] clsArr, String[] strArr, Paint[] paintArr, Drawable[] drawableArr, int i2, ThemeDescriptionDelegate themeDescriptionDelegate, int i3) {
        this.previousIsDefault = new boolean[1];
        this.currentKey = i3;
        this.paintToUpdate = paintArr;
        this.drawablesToUpdate = drawableArr;
        this.viewToInvalidate = view;
        this.changeFlags = i;
        this.listClasses = clsArr;
        this.listClassesFieldName = strArr;
        this.alphaOverride = i2;
        this.delegate = themeDescriptionDelegate;
        this.cachedFields = new HashMap<>();
        this.notFoundCachedFields = new HashMap<>();
        View view2 = this.viewToInvalidate;
        if (view2 instanceof EditTextEmoji) {
            this.viewToInvalidate = ((EditTextEmoji) view2).getEditText();
        }
    }

    public ThemeDescription(View view, int i, Class[] clsArr, String[] strArr, String str, int i2) {
        this.alphaOverride = -1;
        this.previousIsDefault = new boolean[1];
        this.currentKey = i2;
        this.lottieLayerName = str;
        this.viewToInvalidate = view;
        this.changeFlags = i;
        this.listClasses = clsArr;
        this.listClassesFieldName = strArr;
        this.cachedFields = new HashMap<>();
        this.notFoundCachedFields = new HashMap<>();
        View view2 = this.viewToInvalidate;
        if (view2 instanceof EditTextEmoji) {
            this.viewToInvalidate = ((EditTextEmoji) view2).getEditText();
        }
    }

    public ThemeDescriptionDelegate setDelegateDisabled() {
        ThemeDescriptionDelegate themeDescriptionDelegate = this.delegate;
        this.delegate = null;
        return themeDescriptionDelegate;
    }

    public void setColor(int i, boolean z) {
        setColor(i, z, true);
    }

    private boolean checkTag(int i, View view) {
        if (i < 0 || view == null) {
            return false;
        }
        Object tag = view.getTag();
        return (tag instanceof Integer) && ((Integer) tag).intValue() == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setColor(int i, boolean z, boolean z2) {
        Class[] clsArr;
        Drawable[] compoundDrawables;
        if (z2) {
            Theme.setColor(this.currentKey, i, z);
        }
        this.currentColor = i;
        int i2 = this.alphaOverride;
        if (i2 > 0) {
            i = Color.argb(i2, Color.red(i), Color.green(i), Color.blue(i));
        }
        if (this.paintToUpdate != null) {
            int i3 = 0;
            while (true) {
                Paint[] paintArr = this.paintToUpdate;
                if (i3 >= paintArr.length) {
                    break;
                }
                if ((this.changeFlags & FLAG_LINKCOLOR) != 0) {
                    Paint paint = paintArr[i3];
                    if (paint instanceof TextPaint) {
                        ((TextPaint) paint).linkColor = i;
                    } else {
                        paintArr[i3].setColor(i);
                    }
                }
                i3++;
            }
        }
        if (this.drawablesToUpdate != null) {
            int i4 = 0;
            while (true) {
                Drawable[] drawableArr = this.drawablesToUpdate;
                if (i4 >= drawableArr.length) {
                    break;
                }
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    if (drawable instanceof BackDrawable) {
                        ((BackDrawable) drawable).setColor(i);
                    } else if (drawable instanceof ScamDrawable) {
                        ((ScamDrawable) drawable).setColor(i);
                    } else if (drawable instanceof RLottieDrawable) {
                        String str = this.lottieLayerName;
                        if (str != null) {
                            ((RLottieDrawable) drawable).setLayerColor(str, i);
                        }
                    } else if (drawable instanceof CombinedDrawable) {
                        if ((this.changeFlags & FLAG_BACKGROUNDFILTER) != 0) {
                            ((CombinedDrawable) drawable).getBackground().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                        } else {
                            ((CombinedDrawable) drawable).getIcon().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                        }
                    } else if (drawable instanceof AvatarDrawable) {
                        ((AvatarDrawable) drawable).setColor(i);
                    } else if (drawable instanceof AnimatedArrowDrawable) {
                        ((AnimatedArrowDrawable) drawable).setColor(i);
                    } else {
                        drawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    }
                }
                i4++;
            }
        }
        View view = this.viewToInvalidate;
        if (view != null && this.listClasses == null && this.listClassesFieldName == null && ((this.changeFlags & FLAG_CHECKTAG) == 0 || checkTag(this.currentKey, view))) {
            if ((this.changeFlags & FLAG_BACKGROUND) != 0) {
                Drawable background = this.viewToInvalidate.getBackground();
                if (background instanceof MessageBackgroundDrawable) {
                    MessageBackgroundDrawable messageBackgroundDrawable = (MessageBackgroundDrawable) background;
                    messageBackgroundDrawable.setColor(i);
                    messageBackgroundDrawable.setCustomPaint(null);
                } else {
                    this.viewToInvalidate.setBackgroundColor(i);
                }
            }
            int i5 = this.changeFlags;
            if ((FLAG_BACKGROUNDFILTER & i5) != 0) {
                int i6 = i5 & FLAG_PROGRESSBAR;
                View view2 = this.viewToInvalidate;
                if (i6 != 0) {
                    if (view2 instanceof EditTextBoldCursor) {
                        ((EditTextBoldCursor) view2).setErrorLineColor(i);
                    }
                } else {
                    Drawable background2 = view2.getBackground();
                    if (background2 instanceof CombinedDrawable) {
                        if ((this.changeFlags & FLAG_DRAWABLESELECTEDSTATE) != 0) {
                            background2 = ((CombinedDrawable) background2).getBackground();
                        } else {
                            background2 = ((CombinedDrawable) background2).getIcon();
                        }
                    }
                    if (background2 != null) {
                        if ((background2 instanceof StateListDrawable) || (background2 instanceof RippleDrawable)) {
                            Theme.setSelectorDrawableColor(background2, i, (this.changeFlags & FLAG_DRAWABLESELECTEDSTATE) != 0);
                        } else if (background2 instanceof ShapeDrawable) {
                            ((ShapeDrawable) background2).getPaint().setColor(i);
                        } else {
                            background2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                        }
                    }
                }
            }
        }
        View view3 = this.viewToInvalidate;
        if (view3 instanceof ActionBar) {
            if ((this.changeFlags & FLAG_AB_ITEMSCOLOR) != 0) {
                ((ActionBar) view3).setItemsColor(i, false);
            }
            if ((this.changeFlags & FLAG_AB_TITLECOLOR) != 0) {
                ((ActionBar) this.viewToInvalidate).setTitleColor(i);
            }
            if ((this.changeFlags & FLAG_AB_SELECTORCOLOR) != 0) {
                ((ActionBar) this.viewToInvalidate).setItemsBackgroundColor(i, false);
            }
            if ((this.changeFlags & FLAG_AB_AM_SELECTORCOLOR) != 0) {
                ((ActionBar) this.viewToInvalidate).setItemsBackgroundColor(i, true);
            }
            if ((this.changeFlags & FLAG_AB_AM_ITEMSCOLOR) != 0) {
                ((ActionBar) this.viewToInvalidate).setItemsColor(i, true);
            }
            if ((this.changeFlags & FLAG_AB_SUBTITLECOLOR) != 0) {
                ((ActionBar) this.viewToInvalidate).setSubtitleColor(i);
            }
            if ((this.changeFlags & FLAG_AB_AM_BACKGROUND) != 0) {
                ((ActionBar) this.viewToInvalidate).setActionModeColor(i);
            }
            if ((this.changeFlags & FLAG_AB_AM_TOPBACKGROUND) != 0) {
                ((ActionBar) this.viewToInvalidate).setActionModeTopColor(i);
            }
            if ((this.changeFlags & FLAG_AB_SEARCHPLACEHOLDER) != 0) {
                ((ActionBar) this.viewToInvalidate).setSearchTextColor(i, true);
            }
            if ((this.changeFlags & FLAG_AB_SEARCH) != 0) {
                ((ActionBar) this.viewToInvalidate).setSearchTextColor(i, false);
            }
            int i7 = this.changeFlags;
            if ((FLAG_AB_SUBMENUITEM & i7) != 0) {
                ((ActionBar) this.viewToInvalidate).setPopupItemsColor(i, (i7 & FLAG_IMAGECOLOR) != 0, false);
            }
            if ((this.changeFlags & FLAG_AB_SUBMENUBACKGROUND) != 0) {
                ((ActionBar) this.viewToInvalidate).setPopupBackgroundColor(i, false);
            }
        }
        View view4 = this.viewToInvalidate;
        if (view4 instanceof EmptyTextProgressView) {
            int i8 = this.changeFlags;
            if ((FLAG_TEXTCOLOR & i8) != 0) {
                ((EmptyTextProgressView) view4).setTextColor(i);
            } else if ((i8 & FLAG_PROGRESSBAR) != 0) {
                ((EmptyTextProgressView) view4).setProgressBarColor(i);
            }
        }
        View view5 = this.viewToInvalidate;
        if (view5 instanceof RadialProgressView) {
            ((RadialProgressView) view5).setProgressColor(i);
        } else if (view5 instanceof LineProgressView) {
            if ((this.changeFlags & FLAG_PROGRESSBAR) != 0) {
                ((LineProgressView) view5).setProgressColor(i);
            } else {
                ((LineProgressView) view5).setBackColor(i);
            }
        } else if (view5 instanceof ContextProgressView) {
            ((ContextProgressView) view5).updateColors();
        } else if ((view5 instanceof SeekBarView) && (this.changeFlags & FLAG_PROGRESSBAR) != 0) {
            ((SeekBarView) view5).setOuterColor(i);
        }
        int i9 = this.changeFlags;
        if ((FLAG_TEXTCOLOR & i9) != 0 && ((i9 & FLAG_CHECKTAG) == 0 || checkTag(this.currentKey, this.viewToInvalidate))) {
            View view6 = this.viewToInvalidate;
            if (view6 instanceof TextView) {
                ((TextView) view6).setTextColor(i);
            } else if (view6 instanceof NumberTextView) {
                ((NumberTextView) view6).setTextColor(i);
            } else if (view6 instanceof SimpleTextView) {
                ((SimpleTextView) view6).setTextColor(i);
            } else if (view6 instanceof ChatBigEmptyView) {
                ((ChatBigEmptyView) view6).setTextColor(i);
            }
        }
        if ((this.changeFlags & FLAG_CURSORCOLOR) != 0) {
            View view7 = this.viewToInvalidate;
            if (view7 instanceof EditTextBoldCursor) {
                ((EditTextBoldCursor) view7).setCursorColor(i);
            }
        }
        int i10 = this.changeFlags;
        if ((FLAG_HINTTEXTCOLOR & i10) != 0) {
            View view8 = this.viewToInvalidate;
            if (view8 instanceof EditTextBoldCursor) {
                if ((i10 & FLAG_PROGRESSBAR) != 0) {
                    ((EditTextBoldCursor) view8).setHeaderHintColor(i);
                } else {
                    ((EditTextBoldCursor) view8).setHintColor(i);
                }
            } else if (view8 instanceof EditText) {
                ((EditText) view8).setHintTextColor(i);
            }
        }
        View view9 = this.viewToInvalidate;
        int i11 = this.changeFlags;
        if ((FLAG_IMAGECOLOR & i11) != 0 && ((i11 & FLAG_CHECKTAG) == 0 || checkTag(this.currentKey, view9))) {
            View view10 = this.viewToInvalidate;
            if (view10 instanceof ImageView) {
                if ((this.changeFlags & FLAG_USEBACKGROUNDDRAWABLE) != 0) {
                    Drawable drawable2 = ((ImageView) view10).getDrawable();
                    if ((drawable2 instanceof StateListDrawable) || (drawable2 instanceof RippleDrawable)) {
                        Theme.setSelectorDrawableColor(drawable2, i, (this.changeFlags & FLAG_DRAWABLESELECTEDSTATE) != 0);
                    }
                } else {
                    ((ImageView) view10).setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                }
            } else if (!(view10 instanceof BackupImageView)) {
                if (view10 instanceof SimpleTextView) {
                    ((SimpleTextView) view10).setSideDrawablesColor(i);
                } else if ((view10 instanceof TextView) && (compoundDrawables = ((TextView) view10).getCompoundDrawables()) != null) {
                    for (Drawable drawable3 : compoundDrawables) {
                        if (drawable3 != null) {
                            drawable3.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                        }
                    }
                }
            }
        }
        View view11 = this.viewToInvalidate;
        if ((view11 instanceof ScrollView) && (this.changeFlags & FLAG_LISTGLOWCOLOR) != 0) {
            AndroidUtilities.setScrollViewEdgeEffectColor((ScrollView) view11, i);
        }
        View view12 = this.viewToInvalidate;
        if ((view12 instanceof ViewPager) && (this.changeFlags & FLAG_LISTGLOWCOLOR) != 0) {
            AndroidUtilities.setViewPagerEdgeEffectColor((ViewPager) view12, i);
        }
        View view13 = this.viewToInvalidate;
        if (view13 instanceof RecyclerListView) {
            RecyclerListView recyclerListView = (RecyclerListView) view13;
            if ((this.changeFlags & FLAG_SELECTOR) != 0) {
                recyclerListView.setListSelectorColor(Integer.valueOf(i));
            }
            if ((this.changeFlags & FLAG_FASTSCROLL) != 0) {
                recyclerListView.updateFastScrollColors();
            }
            if ((this.changeFlags & FLAG_LISTGLOWCOLOR) != 0) {
                recyclerListView.setGlowColor(i);
            }
            if ((this.changeFlags & FLAG_SECTIONS) != 0) {
                ArrayList<View> headers = recyclerListView.getHeaders();
                if (headers != null) {
                    for (int i12 = 0; i12 < headers.size(); i12++) {
                        processViewColor(headers.get(i12), i);
                    }
                }
                ArrayList<View> headersCache = recyclerListView.getHeadersCache();
                if (headersCache != null) {
                    for (int i13 = 0; i13 < headersCache.size(); i13++) {
                        processViewColor(headersCache.get(i13), i);
                    }
                }
                View pinnedHeader = recyclerListView.getPinnedHeader();
                if (pinnedHeader != null) {
                    processViewColor(pinnedHeader, i);
                }
            }
        } else if (view13 != null && ((clsArr = this.listClasses) == null || clsArr.length == 0)) {
            int i14 = this.changeFlags;
            if ((FLAG_SELECTOR & i14) != 0) {
                view13.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            } else if ((i14 & FLAG_SELECTORWHITE) != 0) {
                view13.setBackgroundDrawable(Theme.getSelectorDrawable(true));
            }
        }
        if (this.listClasses != null) {
            View view14 = this.viewToInvalidate;
            if (view14 instanceof RecyclerListView) {
                RecyclerListView recyclerListView2 = (RecyclerListView) view14;
                recyclerListView2.getRecycledViewPool().clear();
                int hiddenChildCount = recyclerListView2.getHiddenChildCount();
                for (int i15 = 0; i15 < hiddenChildCount; i15++) {
                    processViewColor(recyclerListView2.getHiddenChildAt(i15), i);
                }
                int cachedChildCount = recyclerListView2.getCachedChildCount();
                for (int i16 = 0; i16 < cachedChildCount; i16++) {
                    processViewColor(recyclerListView2.getCachedChildAt(i16), i);
                }
                int attachedScrapChildCount = recyclerListView2.getAttachedScrapChildCount();
                for (int i17 = 0; i17 < attachedScrapChildCount; i17++) {
                    processViewColor(recyclerListView2.getAttachedScrapChildAt(i17), i);
                }
            }
            View view15 = this.viewToInvalidate;
            if (view15 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view15;
                int childCount = viewGroup.getChildCount();
                for (int i18 = 0; i18 < childCount; i18++) {
                    processViewColor(viewGroup.getChildAt(i18), i);
                }
            }
            processViewColor(this.viewToInvalidate, i);
        }
        ThemeDescriptionDelegate themeDescriptionDelegate = this.delegate;
        if (themeDescriptionDelegate != null) {
            themeDescriptionDelegate.didSetColor();
        }
        View view16 = this.viewToInvalidate;
        if (view16 != null) {
            view16.invalidate();
        }
    }

    private void processViewColor(View view, int i) {
        boolean z;
        ThemeDescription themeDescription;
        View view2;
        int i2;
        if (view == null || this.listClasses == null) {
            return;
        }
        int i3 = 0;
        while (true) {
            Class<?>[] clsArr = this.listClasses;
            if (i3 >= clsArr.length) {
                return;
            }
            Class<?> cls = clsArr[i3];
            if (cls != null && cls.isInstance(view)) {
                view.invalidate();
                if ((this.changeFlags & FLAG_CHECKTAG) == 0 || this.checkTag(this.currentKey, view)) {
                    view.invalidate();
                    this.applyDirectViewColor(view, i);
                    z = true;
                } else {
                    z = false;
                }
                if (this.listClassesFieldName != null) {
                    themeDescription = this;
                    view2 = view;
                    i2 = i;
                    themeDescription.applyReflectedFieldColor(view2, cls, i3, i2, z);
                } else {
                    themeDescription = this;
                    view2 = view;
                    i2 = i;
                    if (view2 instanceof GroupCreateSpan) {
                        ((GroupCreateSpan) view2).updateColors();
                    }
                }
            } else {
                themeDescription = this;
                view2 = view;
                i2 = i;
            }
            i3++;
            this = themeDescription;
            view = view2;
            i = i2;
        }
    }

    private void applyDirectViewColor(View view, int i) {
        int i2 = 0;
        if (this.listClassesFieldName == null && (this.changeFlags & FLAG_BACKGROUNDFILTER) != 0) {
            Drawable background = view.getBackground();
            if (background != null) {
                int i3 = this.changeFlags;
                if ((FLAG_CELLBACKGROUNDCOLOR & i3) != 0) {
                    if (background instanceof CombinedDrawable) {
                        Drawable background2 = ((CombinedDrawable) background).getBackground();
                        if (background2 instanceof ColorDrawable) {
                            ((ColorDrawable) background2).setColor(i);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (background instanceof CombinedDrawable) {
                    background = ((CombinedDrawable) background).getIcon();
                } else if ((background instanceof StateListDrawable) || (background instanceof RippleDrawable)) {
                    Theme.setSelectorDrawableColor(background, i, (i3 & FLAG_DRAWABLESELECTEDSTATE) != 0);
                }
                if (background != null) {
                    background.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    return;
                }
                return;
            }
            return;
        }
        int i4 = this.changeFlags;
        if ((FLAG_CELLBACKGROUNDCOLOR & i4) != 0) {
            view.setBackgroundColor(i);
            return;
        }
        if ((FLAG_TEXTCOLOR & i4) != 0) {
            if (view instanceof TextView) {
                ((TextView) view).setTextColor(i);
                return;
            }
            if (view instanceof AudioPlayerAlert.ClippingTextViewSwitcher) {
                while (i2 < 2) {
                    AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = (AudioPlayerAlert.ClippingTextViewSwitcher) view;
                    TextView textView = i2 == 0 ? clippingTextViewSwitcher.getTextView() : clippingTextViewSwitcher.getNextTextView();
                    if (textView != null) {
                        textView.setTextColor(i);
                    }
                    i2++;
                }
                return;
            }
            return;
        }
        if ((FLAG_SERVICEBACKGROUND & i4) != 0) {
            return;
        }
        if ((FLAG_SELECTOR & i4) != 0) {
            view.setBackgroundDrawable(Theme.getSelectorDrawable(false));
        } else if ((i4 & FLAG_SELECTORWHITE) != 0) {
            view.setBackgroundDrawable(Theme.getSelectorDrawable(true));
        }
    }

    private void applyReflectedObjectColor(Object obj, View view, int i) {
        Drawable icon;
        Drawable icon2;
        boolean z = obj instanceof View;
        if (z) {
            ((View) obj).invalidate();
        }
        String str = this.lottieLayerName;
        if (str != null && (obj instanceof RLottieImageView)) {
            ((RLottieImageView) obj).setLayerColor(str, i);
        }
        if ((this.changeFlags & FLAG_USEBACKGROUNDDRAWABLE) != 0 && z) {
            obj = ((View) obj).getBackground();
        }
        int i2 = this.changeFlags;
        if ((FLAG_BACKGROUND & i2) != 0 && (obj instanceof View)) {
            View view2 = (View) obj;
            Drawable background = view2.getBackground();
            if (background instanceof MessageBackgroundDrawable) {
                MessageBackgroundDrawable messageBackgroundDrawable = (MessageBackgroundDrawable) background;
                messageBackgroundDrawable.setColor(i);
                messageBackgroundDrawable.setCustomPaint(null);
                return;
            }
            view2.setBackgroundColor(i);
            return;
        }
        if (obj instanceof EditTextCaption) {
            if ((FLAG_HINTTEXTCOLOR & i2) != 0) {
                EditTextCaption editTextCaption = (EditTextCaption) obj;
                editTextCaption.setHintColor(i);
                editTextCaption.setHintTextColor(i);
                return;
            } else if ((FLAG_CURSORCOLOR & i2) != 0) {
                ((EditTextCaption) obj).setCursorColor(i);
                return;
            } else {
                ((EditTextCaption) obj).setTextColor(i);
                return;
            }
        }
        if (obj instanceof SimpleTextView) {
            if ((FLAG_LINKCOLOR & i2) != 0) {
                ((SimpleTextView) obj).setLinkTextColor(i);
                return;
            } else {
                ((SimpleTextView) obj).setTextColor(i);
                return;
            }
        }
        if (obj instanceof TextView) {
            applyTextViewColor(obj, i);
            return;
        }
        if (obj instanceof ImageView) {
            ImageView imageView = (ImageView) obj;
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof CombinedDrawable) {
                if ((this.changeFlags & FLAG_BACKGROUNDFILTER) != 0) {
                    icon2 = ((CombinedDrawable) drawable).getBackground();
                } else {
                    icon2 = ((CombinedDrawable) drawable).getIcon();
                }
                if (icon2 != null) {
                    icon2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    return;
                }
                return;
            }
            imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            return;
        }
        if (obj instanceof BackupImageView) {
            BackupImageView backupImageView = (BackupImageView) obj;
            Drawable staticThumb = backupImageView.getImageReceiver() != null ? backupImageView.getImageReceiver().getStaticThumb() : null;
            if (!(staticThumb instanceof CombinedDrawable)) {
                if (staticThumb != null) {
                    staticThumb.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    return;
                }
                return;
            } else {
                if ((this.changeFlags & FLAG_BACKGROUNDFILTER) != 0) {
                    icon = ((CombinedDrawable) staticThumb).getBackground();
                } else {
                    icon = ((CombinedDrawable) staticThumb).getIcon();
                }
                if (icon != null) {
                    icon.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    return;
                }
                return;
            }
        }
        if (obj instanceof Drawable) {
            applyDrawableColor(obj, i);
            return;
        }
        if (obj instanceof CheckBox) {
            if ((FLAG_CHECKBOX & i2) != 0) {
                ((CheckBox) obj).setBackgroundColor(i);
                return;
            } else {
                if ((FLAG_CHECKBOXCHECK & i2) != 0) {
                    ((CheckBox) obj).setCheckColor(i);
                    return;
                }
                return;
            }
        }
        if (obj instanceof GroupCreateCheckBox) {
            ((GroupCreateCheckBox) obj).updateColors();
            return;
        }
        if (obj instanceof RadioButton) {
            if ((FLAG_CHECKBOX & i2) != 0) {
                RadioButton radioButton = (RadioButton) obj;
                radioButton.setBackgroundColor(i);
                radioButton.invalidate();
                return;
            } else {
                if ((FLAG_CHECKBOXCHECK & i2) != 0) {
                    RadioButton radioButton2 = (RadioButton) obj;
                    radioButton2.setCheckedColor(i);
                    radioButton2.invalidate();
                    return;
                }
                return;
            }
        }
        if (obj instanceof TextPaint) {
            if ((FLAG_LINKCOLOR & i2) != 0) {
                ((TextPaint) obj).linkColor = i;
                return;
            } else {
                ((TextPaint) obj).setColor(i);
                return;
            }
        }
        if (obj instanceof LineProgressView) {
            if ((FLAG_PROGRESSBAR & i2) != 0) {
                ((LineProgressView) obj).setProgressColor(i);
                return;
            } else {
                ((LineProgressView) obj).setBackColor(i);
                return;
            }
        }
        if (obj instanceof RadialProgressView) {
            ((RadialProgressView) obj).setProgressColor(i);
            return;
        }
        if (obj instanceof Paint) {
            ((Paint) obj).setColor(i);
            view.invalidate();
        } else {
            if (obj instanceof SeekBarView) {
                if ((FLAG_PROGRESSBAR & i2) != 0) {
                    ((SeekBarView) obj).setOuterColor(i);
                    return;
                } else {
                    ((SeekBarView) obj).setInnerColor(i);
                    return;
                }
            }
            if (obj instanceof AudioPlayerAlert.ClippingTextViewSwitcher) {
                applyClippingSwitcherColor(obj, i);
            }
        }
    }

    private void applyReflectedFieldColor(View view, Class<?> cls, int i, int i2, boolean z) {
        String str;
        Object obj;
        String[] strArr = this.listClassesFieldName;
        if (i >= strArr.length || (str = strArr[i]) == null) {
            return;
        }
        String str2 = cls + "_" + str;
        HashMap<String, Boolean> map = this.notFoundCachedFields;
        if (map == null || !map.containsKey(str2)) {
            try {
                HashMap<String, Field> map2 = this.cachedFields;
                Field declaredField = map2 != null ? map2.get(str2) : null;
                if (declaredField == null && (declaredField = cls.getDeclaredField(str)) != null) {
                    declaredField.setAccessible(true);
                    HashMap<String, Field> map3 = this.cachedFields;
                    if (map3 != null) {
                        map3.put(str2, declaredField);
                    }
                }
                if (declaredField == null || (obj = declaredField.get(view)) == null) {
                    return;
                }
                if (z || !(obj instanceof View) || checkTag(this.currentKey, (View) obj)) {
                    if (obj instanceof Integer) {
                        declaredField.set(view, Integer.valueOf(i2));
                    } else {
                        applyReflectedObjectColor(obj, view, i2);
                    }
                }
            } catch (Throwable th) {
                FileLog.m992e(th);
                HashMap<String, Boolean> map4 = this.notFoundCachedFields;
                if (map4 != null) {
                    map4.put(str2, Boolean.TRUE);
                }
            }
        }
    }

    private void applyTextViewColor(Object obj, int i) {
        TypefaceSpan[] typefaceSpanArr;
        TextView textView = (TextView) obj;
        int i2 = this.changeFlags;
        int i3 = 0;
        if ((FLAG_IMAGECOLOR & i2) != 0) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (compoundDrawables != null) {
                while (i3 < compoundDrawables.length) {
                    Drawable drawable = compoundDrawables[i3];
                    if (drawable != null) {
                        drawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    }
                    i3++;
                }
                return;
            }
            return;
        }
        if ((FLAG_LINKCOLOR & i2) != 0) {
            textView.getPaint().linkColor = i;
            textView.invalidate();
            return;
        }
        if ((i2 & FLAG_FASTSCROLL) != 0) {
            CharSequence text = textView.getText();
            if (!(text instanceof SpannedString) || (typefaceSpanArr = (TypefaceSpan[]) ((SpannedString) text).getSpans(0, text.length(), TypefaceSpan.class)) == null || typefaceSpanArr.length <= 0) {
                return;
            }
            while (i3 < typefaceSpanArr.length) {
                typefaceSpanArr[i3].setColor(i);
                i3++;
            }
            return;
        }
        textView.setTextColor(i);
    }

    private void applyDrawableColor(Object obj, int i) {
        Drawable icon;
        if (obj instanceof LetterDrawable) {
            if ((this.changeFlags & FLAG_BACKGROUNDFILTER) != 0) {
                ((LetterDrawable) obj).setBackgroundColor(i);
                return;
            } else {
                ((LetterDrawable) obj).setColor(i);
                return;
            }
        }
        if (obj instanceof CombinedDrawable) {
            if ((this.changeFlags & FLAG_BACKGROUNDFILTER) != 0) {
                icon = ((CombinedDrawable) obj).getBackground();
            } else {
                icon = ((CombinedDrawable) obj).getIcon();
            }
            if (icon != null) {
                icon.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                return;
            }
            return;
        }
        if ((obj instanceof StateListDrawable) || (obj instanceof RippleDrawable)) {
            Theme.setSelectorDrawableColor((Drawable) obj, i, (this.changeFlags & FLAG_DRAWABLESELECTEDSTATE) != 0);
        } else if (obj instanceof GradientDrawable) {
            ((GradientDrawable) obj).setColor(i);
        } else {
            ((Drawable) obj).setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
    }

    private void applyClippingSwitcherColor(Object obj, int i) {
        TypefaceSpan[] typefaceSpanArr;
        TypefaceSpan[] typefaceSpanArr2;
        int i2 = this.changeFlags;
        if ((FLAG_FASTSCROLL & i2) != 0) {
            int i3 = 0;
            while (i3 < 2) {
                AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = (AudioPlayerAlert.ClippingTextViewSwitcher) obj;
                TextView textView = i3 == 0 ? clippingTextViewSwitcher.getTextView() : clippingTextViewSwitcher.getNextTextView();
                if (textView != null) {
                    CharSequence text = textView.getText();
                    if ((text instanceof SpannedString) && (typefaceSpanArr2 = (TypefaceSpan[]) ((SpannedString) text).getSpans(0, text.length(), TypefaceSpan.class)) != null && typefaceSpanArr2.length > 0) {
                        for (TypefaceSpan typefaceSpan : typefaceSpanArr2) {
                            typefaceSpan.setColor(i);
                        }
                    }
                }
                i3++;
            }
            return;
        }
        if ((FLAG_TEXTCOLOR & i2) != 0) {
            if ((i2 & FLAG_CHECKTAG) == 0 || checkTag(this.currentKey, (View) obj)) {
                int i4 = 0;
                while (i4 < 2) {
                    AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher2 = (AudioPlayerAlert.ClippingTextViewSwitcher) obj;
                    TextView textView2 = i4 == 0 ? clippingTextViewSwitcher2.getTextView() : clippingTextViewSwitcher2.getNextTextView();
                    if (textView2 != null) {
                        textView2.setTextColor(i);
                        CharSequence text2 = textView2.getText();
                        if ((text2 instanceof SpannedString) && (typefaceSpanArr = (TypefaceSpan[]) ((SpannedString) text2).getSpans(0, text2.length(), TypefaceSpan.class)) != null && typefaceSpanArr.length > 0) {
                            for (TypefaceSpan typefaceSpan2 : typefaceSpanArr) {
                                typefaceSpan2.setColor(i);
                            }
                        }
                    }
                    i4++;
                }
            }
        }
    }

    public int getCurrentKey() {
        return this.currentKey;
    }

    public void startEditing() {
        int color = Theme.getColor(this.currentKey, this.previousIsDefault);
        this.previousColor = color;
        this.currentColor = color;
    }

    public int getCurrentColor() {
        return this.currentColor;
    }

    public int getSetColor() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer numValueOf = resourcesProvider != null ? Integer.valueOf(resourcesProvider.getColor(this.currentKey)) : null;
        return numValueOf != null ? numValueOf.intValue() : Theme.getColor(this.currentKey);
    }

    public void setAnimatedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            resourcesProvider.setAnimatedColor(getCurrentKey(), i);
        } else {
            Theme.setAnimatedColor(getCurrentKey(), i);
        }
    }

    public void setDefaultColor() {
        setColor(Theme.getDefaultColor(this.currentKey), true);
    }

    public void setPreviousColor() {
        setColor(this.previousColor, this.previousIsDefault[0]);
    }

    public String getTitle() {
        return ThemeColors.getStringName(this.currentKey);
    }
}
