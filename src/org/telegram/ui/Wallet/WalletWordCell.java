package org.telegram.ui.Wallet;

import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes8.dex */
public class WalletWordCell extends FrameLayout {
    private final FrameLayout actionView;
    private final EditText editText;
    private boolean error;
    private final int index;
    private final TextView numberView;
    private Runnable onErrorClearListener;
    private Runnable onNextListener;
    private Runnable onPasteListener;
    private Runnable onTextChangedListener;
    private final ImageView overflowButton;
    private final TextView pasteButton;
    private final Theme.ResourcesProvider resourcesProvider;
    private PopupWindow tooltip;
    private ImageView tooltipArrow;
    private int tooltipHeight;
    private TextView[] tooltipItems;
    private final ViewTreeObserver.OnGlobalLayoutListener tooltipLayoutListener;
    private LinearLayout tooltipRow;
    private final int[] tooltipScreenLocation;
    private final ViewTreeObserver.OnScrollChangedListener tooltipScrollListener;
    private final Rect tooltipVisibleCell;
    private final Rect tooltipVisibleFrame;
    private int tooltipWidth;
    private final int[] tooltipWindowLocation;
    private int tooltipX;
    private int tooltipY;

    public WalletWordCell(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.tooltipVisibleFrame = new Rect();
        this.tooltipVisibleCell = new Rect();
        this.tooltipScreenLocation = new int[2];
        this.tooltipWindowLocation = new int[2];
        this.tooltipLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f$0.updateTooltipPosition();
            }
        };
        this.tooltipScrollListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f$0.updateTooltipPosition();
            }
        };
        this.tooltipItems = new TextView[3];
        this.index = i;
        this.resourcesProvider = resourcesProvider;
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider), 0.5f)));
        setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(11.0f), 0);
        TextView textView = new TextView(context);
        this.numberView = textView;
        textView.setTextSize(15.0f);
        textView.setGravity(17);
        textView.setIncludeFontPadding(false);
        textView.setText((i + 1) + ".");
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, resourcesProvider));
        addView(textView, LayoutHelper.createFrame(22, -2.0f, 16, 0.0f, 0.0f, 8.0f, 0.0f));
        setClipChildren(false);
        EditText editText = new EditText(context);
        this.editText = editText;
        editText.setTextSize(16.0f);
        editText.setGravity(16);
        editText.setBackground(null);
        editText.setPadding(0, AndroidUtilities.dp(15.0f), 0, AndroidUtilities.dp(15.0f));
        editText.setIncludeFontPadding(false);
        editText.setSingleLine(true);
        editText.setImeOptions(5);
        editText.setTypeface(Typeface.DEFAULT);
        editText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        editText.setHint(_UrlKt.FRAGMENT_ENCODE_SET);
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                this.f$0.lambda$new$0(view, z2);
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Wallet.WalletWordCell.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (WalletWordCell.this.error && !editable.toString().trim().toLowerCase().matches(".*\\s+.*") && WalletWordCell.this.isWordValid()) {
                    WalletWordCell.this.clearError();
                }
                WalletWordCell.this.updateNumberColor();
                WalletWordCell.this.updateActionView();
                if (WalletWordCell.this.editText.hasFocus()) {
                    WalletWordCell.this.updateTooltip(editable.toString().trim().toLowerCase());
                }
                if (WalletWordCell.this.onTextChangedListener != null) {
                    WalletWordCell.this.onTextChangedListener.run();
                }
            }
        });
        addView(editText, LayoutHelper.createFrame(-1, -1.0f, 16, 30.0f, 0.0f, z ? 64.0f : 8.0f, 0.0f));
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i2, KeyEvent keyEvent) {
                return this.f$0.lambda$new$1(textView2, i2, keyEvent);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.actionView = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(-2, -2, 21));
        if (z) {
            TextView textView2 = new TextView(context);
            this.pasteButton = textView2;
            textView2.setTextSize(14.0f);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setGravity(17);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider));
            textView2.setText(LocaleController.getString(C2807R.string.WalletPaste));
            textView2.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f));
            textView2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(view);
                }
            });
            frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2, 17));
        } else {
            this.pasteButton = null;
        }
        ImageView imageView = new ImageView(context);
        this.overflowButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider), PorterDuff.Mode.SRC_IN));
        imageView.setImageResource(C2807R.drawable.ic_ab_close);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 3));
        imageView.setVisibility(8);
        imageView.setFocusable(false);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        frameLayout.addView(imageView, LayoutHelper.createFrame(28, 28, 17));
        updateNumberColor();
        updateActionView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, boolean z) {
        if (z) {
            clearError();
            updateNumberColor();
            showTooltipIfNeeded();
        } else {
            hideTooltip();
            validate();
        }
        updateActionView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = keyEvent != null && (keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 160);
        if (i != 5 && !z) {
            return false;
        }
        if (keyEvent == null || (keyEvent.getAction() == 1 && !keyEvent.isCanceled())) {
            onNextPressed();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        pasteFromClipboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.editText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.editText.setSelection(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(256.0f), View.MeasureSpec.getSize(i)), View.MeasureSpec.getMode(i)), i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNumberColor() {
        int color;
        boolean z = this.error || this.editText.getText().length() > 0;
        TextView textView = this.numberView;
        if (this.error) {
            color = Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider);
        } else if (z) {
            color = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider);
        } else {
            color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourcesProvider);
        }
        textView.setTextColor(color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionView() {
        boolean z = this.editText.getText().length() > 0;
        boolean zHasClipboard = hasClipboard();
        TextView textView = this.pasteButton;
        if (textView != null) {
            textView.setVisibility((!z && zHasClipboard) ? 0 : 8);
        }
        ImageView imageView = this.overflowButton;
        if (imageView != null) {
            imageView.setVisibility((z && this.editText.hasFocus()) ? 0 : 8);
        }
    }

    private boolean hasClipboard() {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            if (clipboardManager != null && clipboardManager.hasPrimaryClip() && clipboardManager.getPrimaryClip() != null && clipboardManager.getPrimaryClip().getItemCount() > 0) {
                if (!TextUtils.isEmpty(clipboardManager.getPrimaryClip().getItemAt(0).getText())) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWordValid() {
        String lowerCase = this.editText.getText().toString().trim().toLowerCase();
        if (lowerCase.isEmpty()) {
            return true;
        }
        for (String str : WalletEngine2.getMnemonicWordlist()) {
            if (str.equals(lowerCase)) {
                return true;
            }
        }
        return false;
    }

    private void validate() {
        if (this.error || isWordValid()) {
            return;
        }
        setError(true);
    }

    private void onNextPressed() {
        String lowerCase = this.editText.getText().toString().trim().toLowerCase();
        if (!lowerCase.isEmpty() && isWordValid()) {
            clearError();
            goNext();
            return;
        }
        String strFirstMatch = firstMatch(lowerCase);
        if (strFirstMatch != null) {
            this.editText.setText(strFirstMatch);
            this.editText.setSelection(strFirstMatch.length());
            clearError();
            goNext();
            return;
        }
        setError(true);
    }

    private String firstMatch(String str) {
        if (str.isEmpty()) {
            return null;
        }
        for (String str2 : WalletEngine2.getMnemonicWordlist()) {
            if (str2.startsWith(str)) {
                return str2;
            }
        }
        return null;
    }

    private void goNext() {
        hideTooltip();
        Runnable runnable = this.onNextListener;
        if (runnable != null) {
            this.editText.post(runnable);
        }
    }

    public void setError(boolean z) {
        if (this.error == z) {
            return;
        }
        this.error = z;
        if (z) {
            setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.multAlpha(Theme.getColor(Theme.key_fill_RedNormal, this.resourcesProvider), 0.24f)));
            TextView textView = this.numberView;
            int i = Theme.key_text_RedBold;
            textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
            this.editText.setTextColor(Theme.getColor(i, this.resourcesProvider));
            ImageView imageView = this.overflowButton;
            if (imageView != null) {
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            }
            AndroidUtilities.shakeViewSpring(this);
        } else {
            setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider), 0.5f)));
            this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            ImageView imageView2 = this.overflowButton;
            if (imageView2 != null) {
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            }
            updateNumberColor();
            updateActionView();
        }
        Runnable runnable = this.onErrorClearListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        setError(false);
    }

    private void showTooltipIfNeeded() {
        String lowerCase = this.editText.getText().toString().trim().toLowerCase();
        if (lowerCase.isEmpty()) {
            hideTooltip();
        } else {
            updateTooltip(lowerCase);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTooltip(String str) {
        if (!this.editText.hasFocus() || TextUtils.isEmpty(str) || str.length() < 1 || WalletEngine2.getMnemonicWordlist().length == 0) {
            hideTooltip();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : WalletEngine2.getMnemonicWordlist()) {
            if (str2.startsWith(str) && !str2.equals(str)) {
                arrayList.add(str2);
                if (arrayList.size() >= 3) {
                    break;
                }
            }
        }
        if (arrayList.isEmpty()) {
            hideTooltip();
            return;
        }
        Context context = getContext();
        if (this.tooltip == null) {
            PopupWindow popupWindow = new PopupWindow(context);
            this.tooltip = popupWindow;
            popupWindow.setOutsideTouchable(false);
            this.tooltip.setFocusable(false);
            this.tooltip.setInputMethodMode(1);
            this.tooltip.setBackgroundDrawable(null);
            this.tooltip.setElevation(AndroidUtilities.dp(8.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setClipToPadding(false);
            ImageView imageView = new ImageView(context);
            this.tooltipArrow = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            this.tooltipArrow.setColorFilter(new PorterDuffColorFilter(-872415232, PorterDuff.Mode.SRC_IN));
            this.tooltipArrow.setImageResource(C2807R.drawable.wallet_tooltip_arrow);
            linearLayout.addView(this.tooltipArrow, LayoutHelper.createLinear(18, 9, 1, 0, 0, 0, 0));
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.tooltipRow = linearLayout2;
            linearLayout2.setOrientation(0);
            this.tooltipRow.setGravity(16);
            this.tooltipRow.setPadding(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f));
            this.tooltipRow.setClipToPadding(false);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-872415232);
            gradientDrawable.setCornerRadius(AndroidUtilities.dp(8.0f));
            this.tooltipRow.setBackground(gradientDrawable);
            final int i = 0;
            while (i < 3) {
                TextView textView = new TextView(context);
                textView.setTextSize(14.0f);
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textView.setGravity(17);
                textView.setIncludeFontPadding(false);
                textView.setSingleLine(true);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setMaxWidth(AndroidUtilities.dp(140.0f));
                textView.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(9.0f));
                textView.setVisibility(8);
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateTooltip$4(i, view);
                    }
                });
                this.tooltipItems[i] = textView;
                this.tooltipRow.addView(textView, LayoutHelper.createLinear(-2, -2, 16, i == 0 ? 0 : 12, 0, 0, 0));
                i++;
            }
            linearLayout.addView(this.tooltipRow, LayoutHelper.createLinear(-2, -2));
            this.tooltip.setContentView(linearLayout);
            this.tooltip.setWidth(-2);
            this.tooltip.setHeight(-2);
            this.tooltip.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletWordCell$$ExternalSyntheticLambda7
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    this.f$0.lambda$updateTooltip$5();
                }
            });
        }
        int i2 = 0;
        while (i2 < 3) {
            TextView textView2 = this.tooltipItems[i2];
            if (i2 < arrayList.size()) {
                String str3 = (String) arrayList.get(i2);
                SpannableString spannableString = new SpannableString(str3);
                int iMin = Math.min(str.length(), str3.length());
                spannableString.setSpan(new ForegroundColorSpan(-4539718), 0, iMin, 33);
                spannableString.setSpan(new ForegroundColorSpan(-1), iMin, str3.length(), 33);
                textView2.setText(spannableString);
                textView2.setBackground(i2 == 0 ? Theme.createRoundRectDrawable(AndroidUtilities.dp(5.0f), 452984831) : null);
                textView2.setVisibility(0);
            } else {
                textView2.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                textView2.setBackground(null);
                textView2.setVisibility(8);
            }
            i2++;
        }
        positionTooltip();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTooltip$4(int i, View view) {
        TextView textView = this.tooltipItems[i];
        if (textView == null || TextUtils.isEmpty(textView.getText())) {
            return;
        }
        String string = this.tooltipItems[i].getText().toString();
        this.editText.setText(string);
        this.editText.setSelection(string.length());
        hideTooltip();
        goNext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTooltip$5() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this.tooltipLayoutListener);
        getViewTreeObserver().removeOnScrollChangedListener(this.tooltipScrollListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTooltipPosition() {
        PopupWindow popupWindow = this.tooltip;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        positionTooltip();
    }

    private void positionTooltip() {
        getWindowVisibleDisplayFrame(this.tooltipVisibleFrame);
        getLocationOnScreen(this.tooltipScreenLocation);
        getLocationInWindow(this.tooltipWindowLocation);
        if (!getLocalVisibleRect(this.tooltipVisibleCell)) {
            hideTooltip();
            return;
        }
        Rect rect = this.tooltipVisibleCell;
        int[] iArr = this.tooltipScreenLocation;
        rect.offset(iArr[0], iArr[1]);
        if (!Rect.intersects(this.tooltipVisibleCell, this.tooltipVisibleFrame)) {
            hideTooltip();
            return;
        }
        LinearLayout linearLayout = (LinearLayout) this.tooltip.getContentView();
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(260.0f), this.tooltipVisibleFrame.width()), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = linearLayout.getMeasuredWidth();
        int measuredHeight = linearLayout.getMeasuredHeight();
        int iDp = AndroidUtilities.dp(9.0f);
        int height = this.tooltipScreenLocation[1] + getHeight() + iDp + measuredHeight;
        Rect rect2 = this.tooltipVisibleFrame;
        int i = height > rect2.bottom ? 1 : 0;
        if (i != 0 && (this.tooltipScreenLocation[1] - iDp) - measuredHeight < rect2.top) {
            hideTooltip();
            return;
        }
        if (linearLayout.indexOfChild(this.tooltipArrow) != i) {
            linearLayout.removeView(this.tooltipArrow);
            linearLayout.addView(this.tooltipArrow, i);
            this.tooltipArrow.setRotation(i != 0 ? 180.0f : 0.0f);
        }
        int iMax = Math.max(this.tooltipVisibleFrame.left, Math.min(this.tooltipScreenLocation[0] + ((getWidth() - measuredWidth) / 2), this.tooltipVisibleFrame.right - measuredWidth));
        int[] iArr2 = this.tooltipScreenLocation;
        int height2 = i != 0 ? (iArr2[1] - iDp) - measuredHeight : iArr2[1] + getHeight() + iDp;
        int[] iArr3 = this.tooltipWindowLocation;
        int i2 = iMax + iArr3[0];
        int[] iArr4 = this.tooltipScreenLocation;
        int i3 = i2 - iArr4[0];
        int i4 = (height2 + iArr3[1]) - iArr4[1];
        if (this.tooltip.isShowing()) {
            if (this.tooltipX != i3 || this.tooltipY != i4 || this.tooltipWidth != measuredWidth || this.tooltipHeight != measuredHeight) {
                this.tooltip.update(i3, i4, measuredWidth, measuredHeight);
            }
        } else {
            this.tooltip.setWidth(measuredWidth);
            this.tooltip.setHeight(measuredHeight);
            this.tooltip.showAtLocation(this, 51, i3, i4);
            getViewTreeObserver().addOnGlobalLayoutListener(this.tooltipLayoutListener);
            getViewTreeObserver().addOnScrollChangedListener(this.tooltipScrollListener);
        }
        this.tooltipX = i3;
        this.tooltipY = i4;
        this.tooltipWidth = measuredWidth;
        this.tooltipHeight = measuredHeight;
    }

    private void hideTooltip() {
        PopupWindow popupWindow = this.tooltip;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.tooltip.dismiss();
    }

    private void pasteFromClipboard() {
        CharSequence text;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            if (clipboardManager == null || !clipboardManager.hasPrimaryClip() || clipboardManager.getPrimaryClip() == null || clipboardManager.getPrimaryClip().getItemCount() <= 0 || (text = clipboardManager.getPrimaryClip().getItemAt(0).getText()) == null) {
                return;
            }
            this.editText.setText(text.toString().trim());
            EditText editText = this.editText;
            editText.setSelection(editText.getText().length());
            Runnable runnable = this.onPasteListener;
            if (runnable != null) {
                runnable.run();
            }
        } catch (Exception unused) {
        }
    }

    public String getWord() {
        return this.editText.getText().toString().trim();
    }

    public void setText(String str) {
        this.editText.setText(str);
        this.editText.setSelection(str.length());
        clearError();
        updateNumberColor();
        updateActionView();
        hideTooltip();
    }

    public boolean hasError() {
        return this.error;
    }

    public void setOnErrorClearListener(Runnable runnable) {
        this.onErrorClearListener = runnable;
    }

    public boolean isEmpty() {
        return getWord().isEmpty();
    }

    public void setOnTextChangedListener(Runnable runnable) {
        this.onTextChangedListener = runnable;
    }

    public void setOnPasteListener(Runnable runnable) {
        this.onPasteListener = runnable;
    }

    public void setOnNextListener(Runnable runnable) {
        this.onNextListener = runnable;
    }

    public void requestFieldFocus() {
        this.editText.requestFocus();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        hideTooltip();
    }
}
