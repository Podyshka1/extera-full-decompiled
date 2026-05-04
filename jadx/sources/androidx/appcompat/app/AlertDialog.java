package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.AlertController;

/* JADX INFO: loaded from: classes3.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    final AlertController mAlert;

    protected AlertDialog(Context context, int i) {
        super(context, resolveDialogTheme(context, i));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    static int resolveDialogTheme(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.mAlert.getListView();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public static class Builder {

        /* JADX INFO: renamed from: P */
        private final AlertController.AlertParams f0P;
        private final int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public Builder(Context context, int i) {
            this.f0P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
            this.mTheme = i;
        }

        public Context getContext() {
            return this.f0P.mContext;
        }

        public Builder setTitle(int i) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mTitle = alertParams.mContext.getText(i);
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.f0P.mTitle = charSequence;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.f0P.mCustomTitleView = view;
            return this;
        }

        public Builder setMessage(int i) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mMessage = alertParams.mContext.getText(i);
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.f0P.mMessage = charSequence;
            return this;
        }

        public Builder setIcon(int i) {
            this.f0P.mIconId = i;
            return this;
        }

        public Builder setIcon(Drawable drawable) {
            this.f0P.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(int i) {
            TypedValue typedValue = new TypedValue();
            this.f0P.mContext.getTheme().resolveAttribute(i, typedValue, true);
            this.f0P.mIconId = typedValue.resourceId;
            return this;
        }

        public Builder setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mPositiveButtonText = alertParams.mContext.getText(i);
            this.f0P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mPositiveButtonText = charSequence;
            alertParams.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButtonIcon(Drawable drawable) {
            this.f0P.mPositiveButtonIcon = drawable;
            return this;
        }

        public Builder setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mNegativeButtonText = alertParams.mContext.getText(i);
            this.f0P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mNegativeButtonText = charSequence;
            alertParams.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButtonIcon(Drawable drawable) {
            this.f0P.mNegativeButtonIcon = drawable;
            return this;
        }

        public Builder setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mNeutralButtonText = alertParams.mContext.getText(i);
            this.f0P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mNeutralButtonText = charSequence;
            alertParams.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButtonIcon(Drawable drawable) {
            this.f0P.mNeutralButtonIcon = drawable;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.f0P.mCancelable = z;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.f0P.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.f0P.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.f0P.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder setItems(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(i);
            this.f0P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mAdapter = listAdapter;
            alertParams.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mCursor = cursor;
            alertParams.mLabelColumn = str;
            alertParams.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(i);
            AlertController.AlertParams alertParams2 = this.f0P;
            alertParams2.mOnCheckboxClickListener = onMultiChoiceClickListener;
            alertParams2.mCheckedItems = zArr;
            alertParams2.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnCheckboxClickListener = onMultiChoiceClickListener;
            alertParams.mCheckedItems = zArr;
            alertParams.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mCursor = cursor;
            alertParams.mOnCheckboxClickListener = onMultiChoiceClickListener;
            alertParams.mIsCheckedColumn = str;
            alertParams.mLabelColumn = str2;
            alertParams.mIsMultiChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(i);
            AlertController.AlertParams alertParams2 = this.f0P;
            alertParams2.mOnClickListener = onClickListener;
            alertParams2.mCheckedItem = i2;
            alertParams2.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i, String str, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mCursor = cursor;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = i;
            alertParams.mLabelColumn = str;
            alertParams.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = i;
            alertParams.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mAdapter = listAdapter;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = i;
            alertParams.mIsSingleChoice = true;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f0P.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setView(int i) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mView = null;
            alertParams.mViewLayoutResId = i;
            alertParams.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setView(View view) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mView = view;
            alertParams.mViewLayoutResId = 0;
            alertParams.mViewSpacingSpecified = false;
            return this;
        }

        @Deprecated
        public Builder setView(View view, int i, int i2, int i3, int i4) {
            AlertController.AlertParams alertParams = this.f0P;
            alertParams.mView = view;
            alertParams.mViewLayoutResId = 0;
            alertParams.mViewSpacingSpecified = true;
            alertParams.mViewSpacingLeft = i;
            alertParams.mViewSpacingTop = i2;
            alertParams.mViewSpacingRight = i3;
            alertParams.mViewSpacingBottom = i4;
            return this;
        }

        @Deprecated
        public Builder setInverseBackgroundForced(boolean z) {
            this.f0P.mForceInverseBackground = z;
            return this;
        }

        public Builder setRecycleOnMeasureEnabled(boolean z) {
            this.f0P.mRecycleOnMeasure = z;
            return this;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.f0P.mContext, this.mTheme);
            this.f0P.apply(alertDialog.mAlert);
            alertDialog.setCancelable(this.f0P.mCancelable);
            if (this.f0P.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.f0P.mOnCancelListener);
            alertDialog.setOnDismissListener(this.f0P.mOnDismissListener);
            DialogInterface.OnKeyListener onKeyListener = this.f0P.mOnKeyListener;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }

        public AlertDialog show() {
            AlertDialog alertDialogCreate = create();
            alertDialogCreate.show();
            return alertDialogCreate;
        }
    }
}
