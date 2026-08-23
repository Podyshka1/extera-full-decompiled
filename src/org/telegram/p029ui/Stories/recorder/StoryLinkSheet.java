package org.telegram.p029ui.Stories.recorder;

import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.EditTextCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextCaption;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LoadingSpan;
import org.telegram.p029ui.Components.Paint.Views.LinkPreview;
import org.telegram.p029ui.Components.Paint.Views.StoryLinkPreviewDialog;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes7.dex */
public class StoryLinkSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private UniversalAdapter adapter;
    private ButtonWithCounterView button;
    private FrameLayout buttonContainer;
    private boolean captionAbove;
    public boolean editing;
    private boolean ignoreUrlEdit;
    private String lastCheckedStr;
    private boolean loading;
    private EditTextCell nameEditText;
    private boolean nameOpen;
    private boolean needRemoveDefPrefix;
    private boolean photoLarge;
    private int reqId;
    private final Runnable requestPreview;
    private EditTextCell urlEditText;
    private Pattern urlPattern;
    private TLRPC.WebPage webpage;
    private long webpageId;
    private Utilities.Callback whenDone;

    public StoryLinkSheet(final Context context, Theme.ResourcesProvider resourcesProvider, final PreviewView previewView, Utilities.Callback callback) {
        super(context, null, true, false, false, true, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        this.requestPreview = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$7();
            }
        };
        this.whenDone = callback;
        fixNavigationBar();
        setSlidingActionBar();
        this.headerPaddingTop = AndroidUtilities.m1124dp(4.0f);
        this.headerPaddingBottom = AndroidUtilities.m1124dp(-15.0f);
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2888R.string.StoryLinkURLPlaceholder), true, false, -1, resourcesProvider);
        this.urlEditText = editTextCell;
        editTextCell.whenHitEnter(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.processDone();
            }
        });
        this.urlEditText.editText.setHandlesColor(-12476440);
        this.urlEditText.editText.setCursorColor(-11230757);
        final String str = "https://";
        this.urlEditText.editText.setText("https://");
        this.urlEditText.editText.setSelection(8);
        final TextView textView = new TextView(getContext());
        textView.setTextSize(1, 12.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2888R.string.Paste));
        textView.setPadding(AndroidUtilities.m1124dp(10.0f), 0, AndroidUtilities.m1124dp(10.0f), 0);
        textView.setGravity(17);
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhiteBlueText2);
        textView.setTextColor(themedColor);
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(6.0f), Theme.multAlpha(themedColor, 0.12f), Theme.multAlpha(themedColor, 0.15f)));
        ScaleStateListAnimator.apply(textView, 0.1f, 1.5f);
        this.urlEditText.addView(textView, LayoutHelper.createFrame(-2, 26.0f, 21, 0.0f, 4.0f, 24.0f, 3.0f));
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(str, textView);
            }
        };
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(runnable, view);
            }
        });
        runnable.run();
        this.urlEditText.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int i4;
                if (StoryLinkSheet.this.ignoreUrlEdit) {
                    return;
                }
                StoryLinkSheet storyLinkSheet = StoryLinkSheet.this;
                boolean z = false;
                if (charSequence != null && i == str.length() && charSequence.subSequence(0, i).toString().equals(str) && charSequence.length() >= (i4 = i3 + i) && charSequence.subSequence(i, i4).toString().startsWith(str)) {
                    z = true;
                }
                storyLinkSheet.needRemoveDefPrefix = z;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                runnable.run();
                if (StoryLinkSheet.this.ignoreUrlEdit) {
                    return;
                }
                if (StoryLinkSheet.this.needRemoveDefPrefix && editable != null) {
                    String strSubstring = editable.toString().substring(str.length());
                    StoryLinkSheet.this.ignoreUrlEdit = true;
                    StoryLinkSheet.this.urlEditText.editText.setText(strSubstring);
                    StoryLinkSheet.this.urlEditText.editText.setSelection(0, StoryLinkSheet.this.urlEditText.editText.getText().length());
                    StoryLinkSheet.this.ignoreUrlEdit = false;
                    StoryLinkSheet.this.needRemoveDefPrefix = false;
                    StoryLinkSheet.this.checkEditURL(strSubstring);
                    return;
                }
                StoryLinkSheet.this.checkEditURL(editable == null ? null : editable.toString());
            }
        });
        EditTextCell editTextCell2 = new EditTextCell(context, LocaleController.getString(C2888R.string.StoryLinkNamePlaceholder), true, false, -1, resourcesProvider);
        this.nameEditText = editTextCell2;
        editTextCell2.whenHitEnter(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.processDone();
            }
        });
        this.buttonContainer = new FrameLayout(context);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.StoryLinkAdd), false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        this.button.setEnabled(containsURL(this.urlEditText.getText().toString()));
        this.buttonContainer.addView(this.button, LayoutHelper.createFrame(-1, 48.0f, 119, 10.0f, 10.0f, 10.0f, 10.0f));
        this.topPadding = 0.2f;
        this.takeTranslationIntoAccount = true;
        this.smoothKeyboardAnimationEnabled = true;
        this.smoothKeyboardByBottom = true;
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet.2
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                ((BottomSheet) StoryLinkSheet.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, 0);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$4(context, previewView, view, i2);
            }
        });
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(String str, TextView textView) {
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        boolean z = (TextUtils.isEmpty(this.urlEditText.editText.getText()) || TextUtils.equals(this.urlEditText.editText.getText(), str) || TextUtils.isEmpty(this.urlEditText.editText.getText().toString())) && clipboardManager != null && clipboardManager.hasPrimaryClip();
        textView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.7f).scaleY(z ? 1.0f : 0.7f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(300L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Runnable runnable, View view) {
        CharSequence charSequenceCoerceToText;
        try {
            charSequenceCoerceToText = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip().getItemAt(0).coerceToText(getContext());
        } catch (Exception e) {
            FileLog.m1136e(e);
            charSequenceCoerceToText = null;
        }
        if (charSequenceCoerceToText != null) {
            this.urlEditText.editText.setText(charSequenceCoerceToText.toString());
            EditTextCaption editTextCaption = this.urlEditText.editText;
            editTextCaption.setSelection(0, editTextCaption.getText().length());
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(Context context, PreviewView previewView, View view, int i) {
        TLRPC.WebPage webPage;
        UItem item = this.adapter.getItem(i - 1);
        if (item == null) {
            return;
        }
        if (item.instanceOf(WebpagePreviewView.Factory.class) && (webPage = this.webpage) != null && !isPreviewEmpty(webPage)) {
            StoryLinkPreviewDialog storyLinkPreviewDialog = new StoryLinkPreviewDialog(context, this.currentAccount);
            LinkPreview.WebPagePreview webPagePreview = new LinkPreview.WebPagePreview();
            webPagePreview.url = this.urlEditText.editText.getText().toString();
            webPagePreview.name = this.nameOpen ? this.nameEditText.editText.getText().toString() : null;
            webPagePreview.webpage = this.webpage;
            webPagePreview.largePhoto = this.photoLarge;
            webPagePreview.captionAbove = this.captionAbove;
            storyLinkPreviewDialog.set(webPagePreview, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$3((LinkPreview.WebPagePreview) obj);
                }
            });
            storyLinkPreviewDialog.setStoryPreviewView(previewView);
            storyLinkPreviewDialog.show();
            return;
        }
        if (item.f2105id == 2 && (view instanceof TextCheckCell)) {
            boolean z = !this.nameOpen;
            this.nameOpen = z;
            ((TextCheckCell) view).setChecked(z);
            this.adapter.update(true);
            if (this.nameOpen) {
                this.nameEditText.requestFocus();
            } else {
                this.urlEditText.requestFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(LinkPreview.WebPagePreview webPagePreview) {
        if (webPagePreview == null) {
            closePreview(null);
        } else {
            this.photoLarge = webPagePreview.largePhoto;
            this.captionAbove = webPagePreview.captionAbove;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        if (this.button.isEnabled()) {
            if (this.whenDone != null) {
                LinkPreview.WebPagePreview webPagePreview = new LinkPreview.WebPagePreview();
                webPagePreview.url = this.urlEditText.editText.getText().toString();
                webPagePreview.name = this.nameOpen ? this.nameEditText.editText.getText().toString() : null;
                webPagePreview.webpage = this.webpage;
                webPagePreview.largePhoto = this.photoLarge;
                webPagePreview.captionAbove = this.captionAbove;
                this.whenDone.run(webPagePreview);
                this.whenDone = null;
            }
            lambda$new$0();
        }
    }

    public void set(LinkPreview.WebPagePreview webPagePreview) {
        this.ignoreUrlEdit = true;
        this.editing = true;
        if (webPagePreview != null) {
            this.webpage = webPagePreview.webpage;
            this.loading = false;
            this.urlEditText.setText(webPagePreview.url);
            this.nameEditText.setText(webPagePreview.name);
            this.nameOpen = true ^ TextUtils.isEmpty(webPagePreview.name);
            this.captionAbove = webPagePreview.captionAbove;
            this.photoLarge = webPagePreview.largePhoto;
        } else {
            this.urlEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.nameEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.captionAbove = true;
            this.photoLarge = false;
        }
        this.button.setText(LocaleController.getString(C2888R.string.StoryLinkEdit), false);
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        this.button.setEnabled(containsURL(this.urlEditText.getText().toString()));
        this.ignoreUrlEdit = false;
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.StoryLinkCreate);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet.3
            @Override // org.telegram.p029ui.Components.UniversalAdapter
            protected int getThemedColor(int i) {
                if (i == Theme.key_dialogBackgroundGray) {
                    return -15921907;
                }
                return super.getThemedColor(i);
            }
        };
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.didReceivedWebpagesInUpdates || this.webpageId == 0) {
            return;
        }
        LongSparseArray longSparseArray = (LongSparseArray) objArr[0];
        for (int i3 = 0; i3 < longSparseArray.size(); i3++) {
            TLRPC.WebPage webPage = (TLRPC.WebPage) longSparseArray.valueAt(i3);
            if (webPage != null && this.webpageId == webPage.f1834id) {
                if (isPreviewEmpty(webPage)) {
                    webPage = null;
                }
                this.webpage = webPage;
                this.loading = false;
                this.webpageId = 0L;
                UniversalAdapter universalAdapter = this.adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                    return;
                }
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkEditURL(String str) {
        if (str == null || TextUtils.equals(str, this.lastCheckedStr)) {
            return;
        }
        this.lastCheckedStr = str;
        boolean zContainsURL = containsURL(str);
        AndroidUtilities.cancelRunOnUIThread(this.requestPreview);
        if (zContainsURL) {
            if (!this.loading || this.webpage != null) {
                this.loading = true;
                this.webpage = null;
                UniversalAdapter universalAdapter = this.adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
            }
            AndroidUtilities.runOnUIThread(this.requestPreview, 700L);
        } else if (this.loading || this.webpage != null) {
            this.loading = false;
            this.webpage = null;
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
            UniversalAdapter universalAdapter2 = this.adapter;
            if (universalAdapter2 != null) {
                universalAdapter2.update(true);
            }
        }
        this.button.setEnabled(zContainsURL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7() {
        TL_account.getWebPagePreview getwebpagepreview = new TL_account.getWebPagePreview();
        getwebpagepreview.message = this.urlEditText.editText.getText().toString();
        this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(getwebpagepreview, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$6(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$5(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$5(TLObject tLObject) {
        TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage;
        if (tLObject instanceof TL_account.webPagePreview) {
            TL_account.webPagePreview webpagepreview = (TL_account.webPagePreview) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(webpagepreview.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(webpagepreview.chats, false);
            TLRPC.MessageMedia messageMedia = webpagepreview.media;
            tL_messageMediaWebPage = messageMedia instanceof TLRPC.TL_messageMediaWebPage ? (TLRPC.TL_messageMediaWebPage) messageMedia : null;
        }
        if (tL_messageMediaWebPage != null) {
            TLRPC.WebPage webPage = tL_messageMediaWebPage.webpage;
            this.webpage = webPage;
            if (isPreviewEmpty(webPage)) {
                TLRPC.WebPage webPage2 = this.webpage;
                this.webpageId = webPage2 == null ? 0L : webPage2.f1834id;
                this.webpage = null;
            } else {
                this.webpageId = 0L;
            }
        } else {
            this.webpage = null;
            this.webpageId = 0L;
        }
        this.loading = this.webpageId != 0;
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closePreview(View view) {
        this.loading = false;
        this.webpage = null;
        if (this.reqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
            this.reqId = 0;
        }
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    private boolean containsURL(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.urlPattern == null) {
            this.urlPattern = Pattern.compile("((https?)://|(www|ftp)\\.)?[a-z0-9-]+(\\.[a-z0-9-]+)+([/?]?.+)");
        }
        return this.urlPattern.matcher(str).find();
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.loading || this.webpage != null) {
            arrayList.add(WebpagePreviewView.Factory.item(this.webpage, new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.closePreview(view);
                }
            }));
        }
        arrayList.add(UItem.asCustom(this.urlEditText));
        arrayList.add(UItem.asShadow(1, null));
        arrayList.add(UItem.asCheck(2, LocaleController.getString(C2888R.string.StoryLinkNameHeader)).setChecked(this.nameOpen));
        if (this.nameOpen) {
            arrayList.add(UItem.asCustom(this.nameEditText));
        }
        arrayList.add(UItem.asShadow(3, null));
        arrayList.add(UItem.asCustom(this.buttonContainer));
    }

    public static class WebpagePreviewView extends FrameLayout {
        private final ImageView closeView;
        private final ImageView imageView;
        private final ImageView loadingView;
        private final SpannableString messageLoading;
        private final AnimatedTextView messageView;
        private final Paint separatorPaint;
        private final SpannableString titleLoading;
        private final AnimatedTextView titleView;

        public WebpagePreviewView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.separatorPaint = paint;
            setWillNotDraw(false);
            paint.setColor(-16777216);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            imageView.setImageResource(C2888R.drawable.filled_link);
            imageView.setColorFilter(new PorterDuffColorFilter(-15033089, PorterDuff.Mode.SRC_IN));
            addView(imageView, LayoutHelper.createFrame(48, 48.0f, 19, 9.0f, 0.0f, 0.0f, 0.0f));
            ImageView imageView2 = new ImageView(context);
            this.loadingView = imageView2;
            imageView2.setBackground(new CircularProgressDrawable(AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(2.4f), -15033089) { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet.WebpagePreviewView.1
                @Override // org.telegram.p029ui.Components.CircularProgressDrawable, android.graphics.drawable.Drawable
                public int getIntrinsicHeight() {
                    return AndroidUtilities.m1124dp(26.0f);
                }

                @Override // org.telegram.p029ui.Components.CircularProgressDrawable, android.graphics.drawable.Drawable
                public int getIntrinsicWidth() {
                    return AndroidUtilities.m1124dp(26.0f);
                }
            });
            addView(imageView2, LayoutHelper.createFrame(48, 48.0f, 19, 9.0f, 0.0f, 0.0f, 0.0f));
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.titleView = animatedTextView;
            animatedTextView.setTextColor(-15033089);
            animatedTextView.setTextSize(AndroidUtilities.m1124dp(14.21f));
            animatedTextView.setTypeface(AndroidUtilities.bold());
            animatedTextView.setEllipsizeByGradient(true);
            animatedTextView.getDrawable().setOverrideFullWidth(AndroidUtilities.displaySize.x);
            addView(animatedTextView, LayoutHelper.createFrame(-1, 24.0f, 55, 57.0f, 2.33f, 48.0f, 0.0f));
            AnimatedTextView animatedTextView2 = new AnimatedTextView(context);
            this.messageView = animatedTextView2;
            animatedTextView2.setTextColor(-8355712);
            animatedTextView2.setTextSize(AndroidUtilities.m1124dp(14.21f));
            animatedTextView2.setEllipsizeByGradient(true);
            animatedTextView2.getDrawable().setOverrideFullWidth(AndroidUtilities.displaySize.x);
            addView(animatedTextView2, LayoutHelper.createFrame(-1, 24.0f, 55, 57.0f, 20.66f, 48.0f, 0.0f));
            int textColor = animatedTextView.getTextColor();
            SpannableString spannableString = new SpannableString("x");
            this.titleLoading = spannableString;
            LoadingSpan loadingSpan = new LoadingSpan(animatedTextView, AndroidUtilities.m1124dp(200.0f));
            loadingSpan.setScaleY(0.8f);
            loadingSpan.setColors(Theme.multAlpha(textColor, 0.4f), Theme.multAlpha(textColor, 0.08f));
            spannableString.setSpan(loadingSpan, 0, spannableString.length(), 33);
            int textColor2 = animatedTextView2.getTextColor();
            SpannableString spannableString2 = new SpannableString("x");
            this.messageLoading = spannableString2;
            LoadingSpan loadingSpan2 = new LoadingSpan(animatedTextView2, AndroidUtilities.m1124dp(140.0f));
            loadingSpan2.setScaleY(0.8f);
            loadingSpan2.setColors(Theme.multAlpha(textColor2, 0.4f), Theme.multAlpha(textColor2, 0.08f));
            spannableString2.setSpan(loadingSpan2, 0, spannableString2.length(), 33);
            ImageView imageView3 = new ImageView(context);
            this.closeView = imageView3;
            imageView3.setColorFilter(new PorterDuffColorFilter(1694498815, PorterDuff.Mode.MULTIPLY));
            imageView3.setImageResource(C2888R.drawable.input_clear);
            imageView3.setScaleType(scaleType);
            imageView3.setBackground(Theme.createSelectorDrawable(436207615, 1, AndroidUtilities.m1124dp(18.0f)));
            addView(imageView3, LayoutHelper.createFrame(48, 48.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawRect(0.0f, 0.0f, getWidth(), AndroidUtilities.getShadowHeight(), this.separatorPaint);
            canvas.drawRect(0.0f, getHeight() - AndroidUtilities.getShadowHeight(), getWidth(), getHeight(), this.separatorPaint);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
        }

        public void set(TLRPC.WebPage webPage, View.OnClickListener onClickListener, boolean z) {
            boolean z2 = (webPage == null || (webPage instanceof TLRPC.TL_webPagePending)) ? false : true;
            if (z) {
                ViewPropertyAnimator duration = this.imageView.animate().alpha(z2 ? 1.0f : 0.0f).scaleX(z2 ? 1.0f : 0.4f).scaleY(z2 ? 1.0f : 0.4f).setDuration(320L);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                duration.setInterpolator(cubicBezierInterpolator).start();
                this.loadingView.animate().alpha(z2 ? 0.0f : 1.0f).scaleX(z2 ? 0.4f : 1.0f).scaleY(z2 ? 0.4f : 1.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            } else {
                this.imageView.setAlpha(z2 ? 1.0f : 0.0f);
                this.imageView.setScaleX(z2 ? 1.0f : 0.4f);
                this.imageView.setScaleY(z2 ? 1.0f : 0.4f);
                this.loadingView.setAlpha(z2 ? 0.0f : 1.0f);
                this.loadingView.setScaleX(z2 ? 0.4f : 1.0f);
                this.loadingView.setScaleY(z2 ? 0.4f : 1.0f);
            }
            if (z2) {
                this.titleView.setText(TextUtils.isEmpty(webPage.site_name) ? webPage.title : webPage.site_name, z);
                this.messageView.setText(webPage.description, z);
            } else {
                this.titleView.setText(this.titleLoading, z);
                this.messageView.setText(this.messageLoading, z);
            }
            this.closeView.setOnClickListener(onClickListener);
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public WebpagePreviewView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new WebpagePreviewView(context);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                WebpagePreviewView webpagePreviewView = (WebpagePreviewView) view;
                Object obj = uItem.object;
                webpagePreviewView.set(obj instanceof TLRPC.WebPage ? (TLRPC.WebPage) obj : null, uItem.clickCallback, false);
            }

            public static UItem item(TLRPC.WebPage webPage, View.OnClickListener onClickListener) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = webPage;
                uItemOfFactory.clickCallback = onClickListener;
                return uItemOfFactory;
            }
        }
    }

    public static boolean isPreviewEmpty(TLRPC.WebPage webPage) {
        if (webPage instanceof TLRPC.TL_webPagePending) {
            return true;
        }
        return TextUtils.isEmpty(webPage.title) && TextUtils.isEmpty(webPage.description);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didReceivedWebpagesInUpdates);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryLinkSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$8();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$8() {
        if (isShowing()) {
            this.urlEditText.editText.requestFocus();
            AndroidUtilities.showKeyboard(this.urlEditText.editText);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        AndroidUtilities.hideKeyboard(this.urlEditText.editText);
        AndroidUtilities.hideKeyboard(this.nameEditText.editText);
        super.lambda$new$0();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didReceivedWebpagesInUpdates);
    }
}
