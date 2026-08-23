package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import java.io.File;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.SharedAudioCell;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextCaption;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class SelectAudioAlert extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate, DownloadController.FileDownloadProgressListener {
    private UniversalAdapter adapter;
    private MessageObject downloadingMessageObject;
    private Runnable loadSharedAudioRunnable;
    private boolean loadingLocalAudio;
    private boolean loadingSharedAudio;
    private final boolean local;
    private final ArrayList localAudio;
    private int nextSearchRate;
    private final Utilities.Callback onAudioSelected;
    private final SelectAudioAlert parentAlert;
    private String query;
    private final MessagesController.SavedMusicList savedMusicList;
    private final FrameLayout searchField;
    private final FrameLayout searchFieldContainer;
    private final EditTextCaption searchFieldEditText;
    private final ArrayList sharedAudio;
    private boolean sharedAudioHasMore;
    private final int tag;

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    public SelectAudioAlert(Context context, Utilities.Callback callback) {
        this(context, false, null, callback);
    }

    public SelectAudioAlert(Context context, final boolean z, SelectAudioAlert selectAudioAlert, final Utilities.Callback callback) {
        super(context, null, true, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, new DarkThemeResourceProvider());
        this.localAudio = new ArrayList();
        this.sharedAudio = new ArrayList();
        this.loadSharedAudioRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadSharedAudio();
            }
        };
        this.topPadding = 0.35f;
        fixNavigationBar();
        setSlidingActionBar();
        this.headerPaddingTop = AndroidUtilities.m1124dp(4.0f);
        this.headerPaddingBottom = AndroidUtilities.m1124dp(-10.0f);
        this.local = z;
        this.tag = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.parentAlert = selectAudioAlert;
        this.onAudioSelected = callback;
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchFieldContainer = frameLayout;
        int i = this.backgroundPaddingLeft;
        frameLayout.setPadding(i, 0, i, 0);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.searchField = frameLayout2;
        frameLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(36.0f), getThemedColor(Theme.key_graySection)));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -2.0f, 119, 8.0f, 6.0f, 8.0f, 6.0f));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2888R.drawable.menu_browser_search);
        int i2 = Theme.key_graySectionText;
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.SRC_IN));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        frameLayout2.addView(imageView, LayoutHelper.createFrame(36, 36.0f, 19, 4.0f, 0.0f, 0.0f, 0.0f));
        EditTextCaption editTextCaption = new EditTextCaption(context, this.resourcesProvider);
        this.searchFieldEditText = editTextCaption;
        editTextCaption.setTextSize(1, 15.0f);
        editTextCaption.setTextColor(-1);
        editTextCaption.setHintTextColor(getThemedColor(i2));
        editTextCaption.setHint(LocaleController.getString(C2888R.string.Search));
        editTextCaption.setBackground(null);
        editTextCaption.setLines(1);
        editTextCaption.setMaxLines(1);
        editTextCaption.setSingleLine();
        editTextCaption.setGravity(19);
        editTextCaption.setPadding(0, AndroidUtilities.m1124dp(2.0f), 0, AndroidUtilities.m1124dp(2.0f));
        frameLayout2.addView(editTextCaption, LayoutHelper.createFrame(-1, 36.0f, 16, 40.0f, 0.0f, 10.0f, 0.0f));
        editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String str = SelectAudioAlert.this.query;
                SelectAudioAlert.this.query = editable.toString();
                if (!z) {
                    SelectAudioAlert.this.sharedAudio.clear();
                    if (!TextUtils.isEmpty(str) && TextUtils.isEmpty(SelectAudioAlert.this.query)) {
                        SelectAudioAlert.this.loadSharedAudio();
                    } else {
                        SelectAudioAlert.this.loadSharedAudioDelayed();
                    }
                }
                SelectAudioAlert.this.adapter.update(true);
            }
        });
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, 0, i3, 0);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        if (!z) {
            int i4 = this.currentAccount;
            MessagesController.SavedMusicList savedMusicList = new MessagesController.SavedMusicList(i4, UserConfig.getInstance(i4).getClientUserId());
            this.savedMusicList = savedMusicList;
            savedMusicList.load();
            loadSharedAudio();
        } else {
            this.savedMusicList = null;
            loadLocalAudio();
        }
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i5) {
                this.f$0.lambda$new$0(callback, view, i5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Utilities.Callback callback, View view, int i) {
        if (view instanceof SharedAudioCell) {
            MessageObject message = ((SharedAudioCell) view).getMessage();
            if (message == null) {
                return;
            }
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            if (this.downloadingMessageObject != null) {
                FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.downloadingMessageObject.getDocument());
                this.downloadingMessageObject = null;
            }
            if (!message.attachPathExists && !message.mediaExists) {
                String fileName = message.getFileName();
                if (TextUtils.isEmpty(fileName)) {
                    return;
                }
                this.downloadingMessageObject = message;
                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, message, this);
                FileLoader.getInstance(this.currentAccount).loadFile(message.getDocument(), message, 1, 0);
                return;
            }
            done(message);
            return;
        }
        UItem item = this.adapter.getItem(i - 1);
        if (item != null && item.f2105id == 1) {
            new SelectAudioAlert(getContext(), true, this, callback).show();
            return;
        }
        if (item != null && item.f2105id == 2) {
            this.savedMusicList.load();
        } else {
            if (item == null || item.f2105id != 3) {
                return;
            }
            loadSharedAudio();
        }
    }

    private void done(MessageObject messageObject) {
        this.onAudioSelected.run(messageObject);
        SelectAudioAlert selectAudioAlert = this.parentAlert;
        if (selectAudioAlert != null) {
            selectAudioAlert.lambda$new$0();
        }
        lambda$new$0();
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.StoryMusicTitle);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.musicListLoaded) {
            this.adapter.update(true);
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(this.searchFieldContainer));
        if (!this.local) {
            arrayList.add(UItem.asButton(1, C2888R.drawable.msg2_folder, LocaleController.getString(C2888R.string.StoryMusicSelectFromFiles)).accent());
        }
        if (!this.local) {
            if (this.savedMusicList != null) {
                addSection(arrayList, LocaleController.getString(C2888R.string.StoryMusicProfileMusic), this.savedMusicList.list);
                MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
                if (!savedMusicList.endReached) {
                    arrayList.add(UItem.asButton(2, C2888R.drawable.arrow_more, LocaleController.getString(C2888R.string.ShowMore)).accent());
                } else if (savedMusicList.list.isEmpty()) {
                    arrayList.add(UItem.asShadow(null));
                }
            }
            addSection(arrayList, LocaleController.getString(C2888R.string.StoryMusicSearchMusic), this.sharedAudio);
            ArrayList arrayList2 = this.sharedAudio;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                if (this.sharedAudioHasMore) {
                    arrayList.add(UItem.asButton(3, C2888R.drawable.arrow_more, LocaleController.getString(C2888R.string.ShowMore)).accent());
                } else {
                    arrayList.add(UItem.asShadow(null));
                }
            }
        } else {
            addSection(arrayList, LocaleController.getString(C2888R.string.StoryMusicLocalMusic), this.localAudio);
            arrayList.add(UItem.asShadow(null));
        }
        if (TextUtils.isEmpty(this.query)) {
            return;
        }
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(500.0f)));
    }

    private void addSection(ArrayList arrayList, String str, ArrayList arrayList2) {
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        String str2 = this.query;
        String lowerCase = str2 == null ? null : str2.toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            MessageObject messageObject = (MessageObject) obj;
            if (TextUtils.isEmpty(lowerCase) || arrayList2 == this.sharedAudio) {
                messageObject.setQuery(null);
                arrayList3.add(messageObject);
            } else {
                String musicTitle = messageObject.getMusicTitle();
                String musicAuthor = messageObject.getMusicAuthor();
                if (matches(lowerCase, strTranslitSafe, musicTitle) || matches(lowerCase, strTranslitSafe, musicAuthor)) {
                    messageObject.setQuery(this.query);
                    arrayList3.add(messageObject);
                }
            }
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asGraySection(str));
        int size2 = arrayList3.size();
        while (i < size2) {
            Object obj2 = arrayList3.get(i);
            i++;
            arrayList.add(SharedAudioCell.Factory.m1232as((MessageObject) obj2));
        }
    }

    private boolean matches(String str, String str2, String str3) {
        if (str3 == null) {
            return false;
        }
        String lowerCase = str3.toLowerCase();
        if (!lowerCase.startsWith(str)) {
            if (!lowerCase.contains(" " + str)) {
                String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
                if (!strTranslitSafe.startsWith(str2)) {
                    if (!strTranslitSafe.contains(" " + str2)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSharedAudioDelayed() {
        AndroidUtilities.cancelRunOnUIThread(this.loadSharedAudioRunnable);
        AndroidUtilities.runOnUIThread(this.loadSharedAudioRunnable, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSharedAudio() {
        if (this.local || this.loadingSharedAudio) {
            return;
        }
        if (this.sharedAudio.isEmpty() || this.sharedAudioHasMore) {
            this.loadingSharedAudio = true;
            TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
            tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterMusic();
            String str = this.query;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            tL_messages_searchGlobal.f1778q = str;
            tL_messages_searchGlobal.limit = 20;
            ArrayList arrayList = this.sharedAudio;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = this.sharedAudio;
                MessageObject messageObject = (MessageObject) arrayList2.get(arrayList2.size() - 1);
                tL_messages_searchGlobal.offset_id = messageObject.getId();
                tL_messages_searchGlobal.offset_rate = this.nextSearchRate;
                tL_messages_searchGlobal.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(messageObject.messageOwner.peer_id));
            } else {
                tL_messages_searchGlobal.offset_rate = 0;
                tL_messages_searchGlobal.offset_id = 0;
                tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadSharedAudio$2(tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharedAudio$2(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharedAudio$1(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharedAudio$1(TLObject tLObject) {
        if (tLObject instanceof TLRPC.messages_Messages) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
            ArrayList arrayList = messages_messages.messages;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                this.sharedAudio.add(new MessageObject(this.currentAccount, (TLRPC.Message) obj, false, true));
            }
            this.sharedAudioHasMore = (messages_messages instanceof TLRPC.TL_messages_messagesSlice) && this.sharedAudio.size() < messages_messages.count;
            this.nextSearchRate = messages_messages.next_rate;
            this.loadingSharedAudio = false;
            this.adapter.update(true);
        }
    }

    private void loadLocalAudio() {
        if (this.local && !this.loadingLocalAudio) {
            this.loadingLocalAudio = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadLocalAudio$4();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLocalAudio$4() {
        String[] strArr = {"_id", "artist", "title", "_data", "duration", "album"};
        final ArrayList arrayList = new ArrayList();
        try {
            Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, "is_music != 0", null, "title");
            int i = -2000000000;
            while (cursorQuery.moveToNext()) {
                try {
                    MediaController.AudioEntry audioEntry = new MediaController.AudioEntry();
                    audioEntry.f1593id = cursorQuery.getInt(0);
                    audioEntry.author = cursorQuery.getString(1);
                    audioEntry.title = cursorQuery.getString(2);
                    audioEntry.path = cursorQuery.getString(3);
                    audioEntry.duration = (int) (cursorQuery.getLong(4) / 1000);
                    audioEntry.genre = cursorQuery.getString(5);
                    File file = new File(audioEntry.path);
                    TLRPC.TL_message tL_message = new TLRPC.TL_message();
                    tL_message.out = true;
                    tL_message.f1686id = i;
                    tL_message.peer_id = new TLRPC.TL_peerUser();
                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                    tL_message.from_id = tL_peerUser;
                    TLRPC.Peer peer = tL_message.peer_id;
                    long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                    tL_peerUser.user_id = clientUserId;
                    peer.user_id = clientUserId;
                    tL_message.date = (int) (System.currentTimeMillis() / 1000);
                    tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                    tL_message.attachPath = audioEntry.path;
                    TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                    tL_message.media = tL_messageMediaDocument;
                    tL_messageMediaDocument.flags |= 3;
                    tL_messageMediaDocument.document = new TLRPC.TL_document();
                    tL_message.flags |= 768;
                    String fileExtension = FileLoader.getFileExtension(file);
                    TLRPC.Document document = tL_message.media.document;
                    document.f1668id = 0L;
                    document.access_hash = 0L;
                    document.file_reference = new byte[0];
                    document.date = tL_message.date;
                    StringBuilder sb = new StringBuilder();
                    sb.append("audio/");
                    if (fileExtension.length() <= 0) {
                        fileExtension = "mp3";
                    }
                    sb.append(fileExtension);
                    document.mime_type = sb.toString();
                    tL_message.media.document.size = (int) file.length();
                    tL_message.media.document.dc_id = 0;
                    TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                    tL_documentAttributeAudio.duration = audioEntry.duration;
                    tL_documentAttributeAudio.title = audioEntry.title;
                    tL_documentAttributeAudio.performer = audioEntry.author;
                    tL_documentAttributeAudio.flags = 3 | tL_documentAttributeAudio.flags;
                    tL_message.media.document.attributes.add(tL_documentAttributeAudio);
                    TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                    tL_documentAttributeFilename.file_name = file.getName();
                    tL_message.media.document.attributes.add(tL_documentAttributeFilename);
                    MessageObject messageObject = new MessageObject(this.currentAccount, tL_message, false, true);
                    audioEntry.messageObject = messageObject;
                    arrayList.add(messageObject);
                    i--;
                } finally {
                }
            }
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLocalAudio$3(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLocalAudio$3(ArrayList arrayList) {
        this.loadingLocalAudio = false;
        this.localAudio.addAll(arrayList);
        this.adapter.update(true);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.musicListLoaded);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.musicListLoaded);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        MessageObject messageObject = this.downloadingMessageObject;
        if (messageObject == null || !TextUtils.equals(messageObject.getFileName(), str)) {
            return;
        }
        done(this.downloadingMessageObject);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.tag;
    }
}
