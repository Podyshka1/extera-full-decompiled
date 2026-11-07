package com.exteragram.messenger.components;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentViewBehavior;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.widget.TextViewOnReceiveContentListener;
import com.exteragram.messenger.inline.InlineMathController;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi", "AppCompatCustomView"})
public abstract class ReceiveContentEditText extends EditText implements OnReceiveContentViewBehavior {
    private final TextViewOnReceiveContentListener defaultOnReceiveContentListener;
    private InlineMathController inlineMath;

    public ReceiveContentEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.defaultOnReceiveContentListener = new TextViewOnReceiveContentListener();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InlineMathController inlineMathController;
        String[] onReceiveContentMimeTypes;
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (inputConnectionOnCreateInputConnection != null && Build.VERSION.SDK_INT <= 30 && (onReceiveContentMimeTypes = ViewCompat.getOnReceiveContentMimeTypes(this)) != null) {
            EditorInfoCompat.setContentMimeTypes(editorInfo, onReceiveContentMimeTypes);
            inputConnectionOnCreateInputConnection = InputConnectionCompat.createWrapper(this, inputConnectionOnCreateInputConnection, editorInfo);
        }
        return (inputConnectionOnCreateInputConnection == null || (inlineMathController = this.inlineMath) == null) ? inputConnectionOnCreateInputConnection : inlineMathController.wrap(inputConnectionOnCreateInputConnection);
    }

    public void setInlineMath(InlineMathController inlineMathController) {
        this.inlineMath = inlineMathController;
        requestLayout();
    }

    public InlineMathController getInlineMath() {
        return this.inlineMath;
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingBottom() {
        int compoundPaddingBottom = super.getCompoundPaddingBottom();
        InlineMathController inlineMathController = this.inlineMath;
        return compoundPaddingBottom + (inlineMathController != null ? inlineMathController.getExtraBottom() : 0);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController == null || !inlineMathController.updateOnMeasure()) {
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController != null) {
            inlineMathController.onTextChanged();
        }
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController != null) {
            inlineMathController.invalidateState();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController != null) {
            inlineMathController.onFocusChanged(z);
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController != null) {
            inlineMathController.cancel();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController != null) {
            inlineMathController.cancel();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.inlineMath != null && motionEvent.getAction() == 0) {
            this.inlineMath.onTouchDown();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        InlineMathController inlineMathController = this.inlineMath;
        if (inlineMathController == null || !inlineMathController.onKeyEvent(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        if (handleDragEventViaReceiveContent(dragEvent)) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (handleMenuActionViaReceiveContent(i)) {
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // androidx.core.view.OnReceiveContentViewBehavior
    public ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
        return this.defaultOnReceiveContentListener.onReceiveContent(this, contentInfoCompat);
    }

    private boolean handleMenuActionViaReceiveContent(int i) {
        if (ViewCompat.getOnReceiveContentMimeTypes(this) == null || !(i == 16908322 || i == 16908337)) {
            return false;
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            ViewCompat.performReceiveContent(this, new ContentInfoCompat.Builder(primaryClip, 1).setFlags(i != 16908322 ? 1 : 0).build());
        }
        return true;
    }

    private boolean handleDragEventViaReceiveContent(DragEvent dragEvent) {
        Activity activityFindActivity;
        if (Build.VERSION.SDK_INT >= 31 || dragEvent.getLocalState() != null || ViewCompat.getOnReceiveContentMimeTypes(this) == null || (activityFindActivity = findActivity()) == null || dragEvent.getAction() == 1 || dragEvent.getAction() != 3) {
            return false;
        }
        return OnDropApi24Impl.onDropForTextView(dragEvent, this, activityFindActivity);
    }

    private Activity findActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class OnDropApi24Impl {
        public static boolean onDropForTextView(DragEvent dragEvent, ReceiveContentEditText receiveContentEditText, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            int offsetForPosition = receiveContentEditText.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
            receiveContentEditText.beginBatchEdit();
            try {
                Selection.setSelection(receiveContentEditText.getText(), offsetForPosition);
                ViewCompat.performReceiveContent(receiveContentEditText, new ContentInfoCompat.Builder(dragEvent.getClipData(), 3).build());
                receiveContentEditText.endBatchEdit();
                return true;
            } catch (Throwable th) {
                receiveContentEditText.endBatchEdit();
                throw th;
            }
        }
    }
}
