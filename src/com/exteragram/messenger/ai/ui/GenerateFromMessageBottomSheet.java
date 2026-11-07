package com.exteragram.messenger.ai.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.ai.network.backend.OnDeviceAvailability;
import com.exteragram.messenger.components.CheckBoxRow;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class GenerateFromMessageBottomSheet extends BottomSheet {
    private boolean includeImage;
    BaseFragment parentFragment;
    private final EditTextCell promptCell;
    private boolean useHistory;

    public GenerateFromMessageBottomSheet(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, BaseFragment baseFragment, Context context, Utilities.Callback<GenerationData> callback) {
        this(Objects.toString(ChatUtils.getInstance().getMessageText(messageObject, groupedMessages), _UrlKt.FRAGMENT_ENCODE_SET), ChatUtils.getInstance().getPathToMessage(messageObject), baseFragment, context, callback);
    }

    public GenerateFromMessageBottomSheet(BaseFragment baseFragment, Context context, Utilities.Callback<GenerationData> callback, boolean z) {
        this(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, baseFragment, context, callback, z);
    }

    public GenerateFromMessageBottomSheet(String str, String str2, BaseFragment baseFragment, Context context, Utilities.Callback<GenerationData> callback) {
        this(str, str2, baseFragment, context, callback, AiConfig.getSaveHistory());
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public GenerateFromMessageBottomSheet(String str, final String str2, BaseFragment baseFragment, Context context, final Utilities.Callback<GenerationData> callback, boolean z) {
        View view;
        super(context, true, baseFragment.getResourceProvider());
        int i = Theme.key_windowBackgroundGray;
        setBackgroundColor(getThemedColor(i));
        fixNavigationBar(getThemedColor(i));
        setApplyTopPadding(false);
        this.smoothKeyboardAnimationEnabled = true;
        this.parentFragment = baseFragment;
        this.useHistory = AiConfig.getSaveHistory();
        this.includeImage = AiController.canSendImage(str2);
        OnDeviceAvailability.warmup();
        ScrollView scrollView = new ScrollView(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        scrollView.addView(linearLayout, LayoutHelper.createScroll(-1, -2, 51));
        FrameLayout frameLayout = new FrameLayout(context);
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2807R.string.Generate));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(getThemedColor(i2));
        textView.setGravity(19);
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, 56.0f, 51, 22.0f, 6.0f, 56.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2807R.drawable.ic_close_white);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.SRC_IN));
        ScaleStateListAnimator.apply(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(view2);
            }
        });
        frameLayout.addView(imageView, LayoutHelper.createFrame(48, 48.0f, 53, 0.0f, 10.0f, 12.0f, 0.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 70));
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2807R.string.RolePrompt), true, false, -1, this.resourcesProvider);
        this.promptCell = editTextCell;
        editTextCell.editText.setImeOptions(6);
        editTextCell.editText.setMaxLines(8);
        editTextCell.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), getThemedColor(Theme.key_windowBackgroundWhite)));
        if (!TextUtils.isEmpty(str)) {
            editTextCell.setText(str);
        }
        editTextCell.editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return GenerateFromMessageBottomSheet.$r8$lambda$laNJ0iHDAsTlRULt4okWVi3GNfs(view2, motionEvent);
            }
        });
        linearLayout.addView(editTextCell, LayoutHelper.createLinear(-1, -2, 12.0f, 0.0f, 12.0f, 0.0f));
        boolean z2 = AiConfig.getSaveHistory() && z;
        boolean zCanSendImage = AiController.canSendImage(str2);
        if (z2 || zCanSendImage) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(1);
            if (z2) {
                CheckBoxRow checkBoxRow = new CheckBoxRow(context, LocaleController.getString(C2807R.string.GenerateWithHistory), this.useHistory, this.resourcesProvider);
                checkBoxRow.setOnCheckedChange(new Function1() { // from class: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return this.f$0.lambda$new$2((Boolean) obj);
                    }
                });
                linearLayout2.addView(checkBoxRow, LayoutHelper.createLinear(-2, -2, 4.0f, 0.0f, 4.0f, 0.0f));
            }
            if (zCanSendImage) {
                CheckBoxRow checkBoxRow2 = new CheckBoxRow(context, LocaleController.getString(C2807R.string.GenerateWithPhoto), this.includeImage, this.resourcesProvider);
                checkBoxRow2.setOnCheckedChange(new Function1() { // from class: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return this.f$0.lambda$new$3((Boolean) obj);
                    }
                });
                BackupImageView backupImageView = new BackupImageView(context);
                backupImageView.getImageReceiver().setImage(str2, "24_24", null, null, 0L);
                backupImageView.setRoundRadius(AndroidUtilities.dp(4.0f));
                checkBoxRow2.addView(backupImageView, LayoutHelper.createLinear(24, 24, 16, 9, 0, 0, 0));
                linearLayout2.addView(checkBoxRow2, LayoutHelper.createLinear(-2, -2, 4.0f, 0.0f, 4.0f, 0.0f));
            }
            view = linearLayout2;
        } else {
            view = null;
        }
        ButtonWithCounterView round = new ButtonWithCounterView(context, this.resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.Proceed), false);
        round.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$4(str2, callback, view2);
            }
        });
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 0, 12, 12, 12, view != null ? 16 : 12));
        if (view != null) {
            linearLayout.addView(view, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 8.0f));
        }
        setCustomView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        lambda$new$0();
    }

    public static /* synthetic */ boolean $r8$lambda$laNJ0iHDAsTlRULt4okWVi3GNfs(View view, MotionEvent motionEvent) {
        view.getParent().requestDisallowInterceptTouchEvent(true);
        if ((motionEvent.getAction() & 255) == 1) {
            view.getParent().requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$new$2(Boolean bool) {
        this.useHistory = bool.booleanValue();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$new$3(Boolean bool) {
        this.includeImage = bool.booleanValue();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(String str, Utilities.Callback callback, View view) {
        String string = this.promptCell.editText.getText().toString();
        if (TextUtils.isEmpty(string)) {
            if (!this.includeImage) {
                AndroidUtilities.shakeViewSpring(this.promptCell);
                view.performHapticFeedback(0);
                return;
            }
            string = LocaleController.getString(C2807R.string.AttachPhoto);
        }
        lambda$new$0();
        if (!this.includeImage) {
            str = null;
        }
        callback.run(new GenerationData(string, this.useHistory, str));
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$5();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$5() {
        EditTextCaption editTextCaption = this.promptCell.editText;
        editTextCaption.setSelection(editTextCaption.length());
        AndroidUtilities.showKeyboard(this.promptCell.editText);
    }

    public static final class GenerationData extends RecordTag {
        private final String imagePath;
        private final String prompt;
        private final boolean useHistory;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof GenerationData)) {
                return false;
            }
            GenerationData generationData = (GenerationData) obj;
            return this.useHistory == generationData.useHistory && Objects.equals(this.prompt, generationData.prompt) && Objects.equals(this.imagePath, generationData.imagePath);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.prompt, Boolean.valueOf(this.useHistory), this.imagePath};
        }

        public GenerationData(String str, boolean z, String str2) {
            this.prompt = str;
            this.useHistory = z;
            this.imagePath = str2;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return AbstractC1231x1d8a54ff.m244m(this.useHistory, this.prompt, this.imagePath);
        }

        public String imagePath() {
            return this.imagePath;
        }

        public String prompt() {
            return this.prompt;
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), GenerationData.class, "prompt;useHistory;imagePath");
        }

        public boolean useHistory() {
            return this.useHistory;
        }
    }
}
