package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.collection.LongSparseArray;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.hooks.PluginsHooks;
import com.exteragram.messenger.utils.MediaUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.mvel2.MVEL;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.support.SparseLongArray;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.QuickRepliesController;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedFileDrawable;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Point;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.Reactions.ReactionsUtils;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.OAuthSheet;
import org.telegram.p029ui.PaymentFormActivity;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.TON.TONIntroActivity;
import org.telegram.p029ui.TwoStepVerificationActivity;
import org.telegram.p029ui.TwoStepVerificationSetupActivity;
import org.telegram.p029ui.bots.BotWebViewSheet;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.QuickAckDelegate;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_stories;
import org.webrtc.MediaStreamTrack;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SendMessagesHelper extends BaseController implements NotificationCenter.NotificationCenterDelegate {
    private static final int ERROR_TYPE_FILE_TOO_LARGE = 2;
    private static final int ERROR_TYPE_UNSUPPORTED = 1;
    private static volatile SendMessagesHelper[] Instance = null;
    public static final int MEDIA_TYPE_DICE = 11;
    public static final int MEDIA_TYPE_STORY = 12;
    private static DispatchQueue mediaSendQueue = new DispatchQueue("mediaSendQueue");
    private static ThreadPoolExecutor mediaSendThreadPool;
    private final HashMap<String, ArrayList<DelayedMessage>> delayedMessages;
    private final SparseArray<TLRPC.Message> editingMessages;
    private final PluginsHooks hooks;
    private final HashMap<String, ImportingHistory> importingHistoryFiles;
    private final LongSparseArray importingHistoryMap;
    private final HashMap<String, ImportingStickers> importingStickersFiles;
    private final HashMap<String, ImportingStickers> importingStickersMap;
    private LocationProvider locationProvider;
    private final SparseArray<TLRPC.Message> sendingMessages;
    private final LongSparseArray sendingMessagesIdDialogs;
    private final SparseArray<MessageObject> unsentMessages;
    private final SparseArray<TLRPC.Message> uploadMessages;
    private final LongSparseArray uploadingMessagesIdDialogs;
    private final LongSparseArray voteSendTime;
    private final HashMap<String, Boolean> waitingForCallback;
    private final HashMap<String, List<String>> waitingForCallbackMap;
    private final HashMap<String, MessageObject> waitingForLocation;
    private final HashMap<Integer, Boolean> waitingForTodoUpdate;
    private final HashMap<String, byte[]> waitingForVote;

    /* JADX INFO: loaded from: classes5.dex */
    public static class SendingMediaInfo {
        public boolean canDeleteAfter;
        public String caption;
        public String coverPath;
        public TLRPC.Photo coverPhoto;
        public TLRPC.VideoSize emojiMarkup;
        public ArrayList<TLRPC.MessageEntity> entities;
        public boolean forceImage;
        public boolean hasMediaSpoilers;
        public boolean highQuality;
        public TLRPC.BotInlineResult inlineResult;
        public boolean isVideo;
        public ArrayList<TLRPC.InputDocument> masks;
        public MediaController.PhotoEntry originalPhotoEntry;
        public String paintPath;
        public HashMap<String, String> params;
        public String path;
        public MediaController.SearchImage searchImage;
        public long stars;
        public String thumbPath;
        public int ttl;
        public boolean updateStickersOrder;
        public Uri uri;
        public VideoEditedInfo videoEditedInfo;
    }

    public static /* synthetic */ void $r8$lambda$yvue_LxLXYIq4r5DvhQsljYeK2I(String str) {
    }

    public static boolean checkUpdateStickersOrder(CharSequence charSequence) {
        if (charSequence instanceof Spannable) {
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) ((Spannable) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class)) {
                if (animatedEmojiSpan.fromEmojiKeyboard) {
                    return true;
                }
            }
        }
        return false;
    }

    public TLRPC.InputReplyTo createReplyInput(TL_stories.StoryItem storyItem) {
        TLRPC.TL_inputReplyToStory tL_inputReplyToStory = new TLRPC.TL_inputReplyToStory();
        tL_inputReplyToStory.story_id = storyItem.f1857id;
        tL_inputReplyToStory.peer = getMessagesController().getInputPeer(storyItem.dialogId);
        return tL_inputReplyToStory;
    }

    public TLRPC.InputReplyTo createReplyInput(int i) {
        return createReplyInput(null, i, 0, null);
    }

    public TLRPC.InputReplyTo createReplyInput(TLRPC.InputPeer inputPeer, int i, int i2, ChatActivity.ReplyQuote replyQuote) {
        MessageObject messageObject;
        TLRPC.TodoItem todoItem;
        TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
        tL_inputReplyToMessage.reply_to_msg_id = i;
        if (i2 != 0) {
            tL_inputReplyToMessage.flags |= 1;
            tL_inputReplyToMessage.top_msg_id = i2;
        }
        if (replyQuote != null && replyQuote.todo && (todoItem = replyQuote.task) != null) {
            tL_inputReplyToMessage.flags |= 64;
            tL_inputReplyToMessage.todo_item_id = todoItem.f1823id;
        } else if (replyQuote != null && !replyQuote.todo) {
            String text = replyQuote.getText();
            tL_inputReplyToMessage.quote_text = text;
            if (!TextUtils.isEmpty(text)) {
                tL_inputReplyToMessage.flags |= 4;
                ArrayList filteredEntities = replyQuote.getFilteredEntities();
                tL_inputReplyToMessage.quote_entities = filteredEntities;
                if (filteredEntities != null && !filteredEntities.isEmpty()) {
                    tL_inputReplyToMessage.quote_entities = new ArrayList(tL_inputReplyToMessage.quote_entities);
                    tL_inputReplyToMessage.flags |= 8;
                }
                tL_inputReplyToMessage.flags |= 16;
                tL_inputReplyToMessage.quote_offset = replyQuote.start;
            }
        }
        if (replyQuote != null && (messageObject = replyQuote.message) != null) {
            TLRPC.InputPeer inputPeer2 = getMessagesController().getInputPeer(messageObject.getDialogId());
            if (inputPeer2 != null && !MessageObject.peersEqual(inputPeer2, inputPeer)) {
                tL_inputReplyToMessage.flags |= 2;
                tL_inputReplyToMessage.reply_to_peer_id = inputPeer2;
            }
        }
        return tL_inputReplyToMessage;
    }

    public TLRPC.InputReplyTo createReplyInput(TLRPC.TL_messageReplyHeader tL_messageReplyHeader) {
        TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
        tL_inputReplyToMessage.reply_to_msg_id = tL_messageReplyHeader.reply_to_msg_id;
        int i = tL_messageReplyHeader.flags;
        if ((i & 2) != 0) {
            tL_inputReplyToMessage.flags |= 1;
            tL_inputReplyToMessage.top_msg_id = tL_messageReplyHeader.reply_to_top_id;
        }
        if ((i & 1) != 0) {
            tL_inputReplyToMessage.flags |= 2;
            tL_inputReplyToMessage.reply_to_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(tL_messageReplyHeader.reply_to_peer_id);
        }
        if (tL_messageReplyHeader.quote) {
            int i2 = tL_messageReplyHeader.flags;
            if ((i2 & 64) != 0) {
                tL_inputReplyToMessage.flags |= 4;
                tL_inputReplyToMessage.quote_text = tL_messageReplyHeader.quote_text;
            }
            if ((i2 & 128) != 0) {
                tL_inputReplyToMessage.flags |= 8;
                tL_inputReplyToMessage.quote_entities = tL_messageReplyHeader.quote_entities;
            }
            if ((i2 & 1024) != 0) {
                tL_inputReplyToMessage.flags |= 16;
                tL_inputReplyToMessage.quote_offset = tL_messageReplyHeader.quote_offset;
            }
        }
        if ((tL_messageReplyHeader.flags & 2048) != 0) {
            tL_inputReplyToMessage.flags |= 64;
            tL_inputReplyToMessage.todo_item_id = tL_messageReplyHeader.todo_item_id;
        }
        return tL_inputReplyToMessage;
    }

    public class ImportingHistory {
        public long dialogId;
        public double estimatedUploadSpeed;
        public String historyPath;
        public long importId;
        private long lastUploadSize;
        private long lastUploadTime;
        public TLRPC.InputPeer peer;
        public long totalSize;
        public int uploadProgress;
        public long uploadedSize;
        public ArrayList<Uri> mediaPaths = new ArrayList<>();
        public HashSet<String> uploadSet = new HashSet<>();
        public HashMap<String, Float> uploadProgresses = new HashMap<>();
        public HashMap<String, Long> uploadSize = new HashMap<>();
        public ArrayList<String> uploadMedia = new ArrayList<>();
        public int timeUntilFinish = Integer.MAX_VALUE;

        public ImportingHistory() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initImport(TLRPC.InputFile inputFile) {
            TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport = new TLRPC.TL_messages_initHistoryImport();
            tL_messages_initHistoryImport.file = inputFile;
            tL_messages_initHistoryImport.media_count = this.mediaPaths.size();
            tL_messages_initHistoryImport.peer = this.peer;
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_messages_initHistoryImport, new C28911(tL_messages_initHistoryImport), 2);
        }

        /* JADX INFO: renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1 */
        /* JADX INFO: loaded from: classes5.dex */
        class C28911 implements RequestDelegate {
            final /* synthetic */ TLRPC.TL_messages_initHistoryImport val$req;

            C28911(TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport) {
                this.val$req = tL_messages_initHistoryImport;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC.TL_error tL_error) {
                final TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tLObject, tL_messages_initHistoryImport, tL_error);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport, TLRPC.TL_error tL_error) {
                if (tLObject instanceof TLRPC.TL_messages_historyImport) {
                    ImportingHistory importingHistory = ImportingHistory.this;
                    importingHistory.importId = ((TLRPC.TL_messages_historyImport) tLObject).f1768id;
                    importingHistory.uploadSet.remove(importingHistory.historyPath);
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                    if (ImportingHistory.this.uploadSet.isEmpty()) {
                        ImportingHistory.this.startImport();
                    }
                    ImportingHistory.this.lastUploadTime = SystemClock.elapsedRealtime();
                    int size = ImportingHistory.this.uploadMedia.size();
                    for (int i = 0; i < size; i++) {
                        SendMessagesHelper.this.getFileLoader().uploadFile(ImportingHistory.this.uploadMedia.get(i), false, true, 67108864);
                    }
                    return;
                }
                SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tL_messages_initHistoryImport, tL_error);
            }
        }

        public long getUploadedCount() {
            return this.uploadedSize;
        }

        public long getTotalCount() {
            return this.totalSize;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileFailedToUpload(String str) {
            if (str.equals(this.historyPath)) {
                SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
                TLRPC.TL_error tL_error = new TLRPC.TL_error();
                tL_error.code = 400;
                tL_error.text = "IMPORT_UPLOAD_FAILED";
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId), new TLRPC.TL_messages_initHistoryImport(), tL_error);
                return;
            }
            this.uploadSet.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUploadProgress(String str, long j, float f) {
            this.uploadProgresses.put(str, Float.valueOf(f));
            this.uploadSize.put(str, Long.valueOf(j));
            this.uploadedSize = 0L;
            Iterator<Map.Entry<String, Long>> it = this.uploadSize.entrySet().iterator();
            while (it.hasNext()) {
                this.uploadedSize += it.next().getValue().longValue();
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (!str.equals(this.historyPath)) {
                long j2 = this.uploadedSize;
                if (j2 != this.lastUploadSize) {
                    if (jElapsedRealtime != this.lastUploadTime) {
                        double d = (j2 - r2) / ((jElapsedRealtime - r4) / 1000.0d);
                        double d2 = this.estimatedUploadSpeed;
                        if (d2 == 0.0d) {
                            this.estimatedUploadSpeed = d;
                        } else {
                            this.estimatedUploadSpeed = (d * 0.01d) + (0.99d * d2);
                        }
                        this.timeUntilFinish = (int) (((this.totalSize - j2) * 1000) / this.estimatedUploadSpeed);
                        this.lastUploadSize = j2;
                        this.lastUploadTime = jElapsedRealtime;
                    }
                }
            }
            int uploadedCount = (int) ((getUploadedCount() / getTotalCount()) * 100.0f);
            if (this.uploadProgress != uploadedCount) {
                this.uploadProgress = uploadedCount;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onMediaImport(String str, long j, TLRPC.InputFile inputFile) {
            String lowerCase;
            addUploadProgress(str, j, 1.0f);
            TLRPC.TL_messages_uploadImportedMedia tL_messages_uploadImportedMedia = new TLRPC.TL_messages_uploadImportedMedia();
            tL_messages_uploadImportedMedia.peer = this.peer;
            tL_messages_uploadImportedMedia.import_id = this.importId;
            tL_messages_uploadImportedMedia.file_name = new File(str).getName();
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            int iLastIndexOf = tL_messages_uploadImportedMedia.file_name.lastIndexOf(46);
            if (iLastIndexOf == -1) {
                lowerCase = "txt";
            } else {
                lowerCase = tL_messages_uploadImportedMedia.file_name.substring(iLastIndexOf + 1).toLowerCase();
            }
            String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(lowerCase);
            if (mimeTypeFromExtension == null) {
                if ("opus".equals(lowerCase)) {
                    mimeTypeFromExtension = "audio/opus";
                } else if ("webp".equals(lowerCase)) {
                    mimeTypeFromExtension = "image/webp";
                } else {
                    mimeTypeFromExtension = "text/plain";
                }
            }
            if (mimeTypeFromExtension.equals("image/jpg") || mimeTypeFromExtension.equals("image/jpeg")) {
                TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                tL_inputMediaUploadedPhoto.file = inputFile;
                tL_messages_uploadImportedMedia.media = tL_inputMediaUploadedPhoto;
            } else {
                TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
                tL_inputMediaUploadedDocument.file = inputFile;
                tL_inputMediaUploadedDocument.mime_type = mimeTypeFromExtension;
                tL_messages_uploadImportedMedia.media = tL_inputMediaUploadedDocument;
            }
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_messages_uploadImportedMedia, new C28922(str), 2);
        }

        /* JADX INFO: renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2 */
        /* JADX INFO: loaded from: classes5.dex */
        class C28922 implements RequestDelegate {
            final /* synthetic */ String val$path;

            C28922(String str) {
                this.val$path = str;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                final String str = this.val$path;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(str);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(String str) {
                ImportingHistory.this.uploadSet.remove(str);
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                if (ImportingHistory.this.uploadSet.isEmpty()) {
                    ImportingHistory.this.startImport();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startImport() {
            TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport = new TLRPC.TL_messages_startHistoryImport();
            tL_messages_startHistoryImport.peer = this.peer;
            tL_messages_startHistoryImport.import_id = this.importId;
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_messages_startHistoryImport, new C28933(tL_messages_startHistoryImport));
        }

        /* JADX INFO: renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3 */
        /* JADX INFO: loaded from: classes5.dex */
        class C28933 implements RequestDelegate {
            final /* synthetic */ TLRPC.TL_messages_startHistoryImport val$req;

            C28933(TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport) {
                this.val$req = tL_messages_startHistoryImport;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, final TLRPC.TL_error tL_error) {
                final TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tL_error, tL_messages_startHistoryImport);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC.TL_error tL_error, TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport) {
                SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                if (tL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                } else {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tL_messages_startHistoryImport, tL_error);
                }
            }
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
            }
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class ImportingSticker {
        public boolean animated;
        public String emoji;
        public TLRPC.TL_inputStickerSetItem item;
        public String mimeType;
        public String path;
        public boolean validated;
        public VideoEditedInfo videoEditedInfo;

        public void uploadMedia(int i, TLRPC.InputFile inputFile, Runnable runnable) {
            TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
            tL_messages_uploadMedia.peer = new TLRPC.TL_inputPeerSelf();
            TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
            tL_messages_uploadMedia.media = tL_inputMediaUploadedDocument;
            tL_inputMediaUploadedDocument.file = inputFile;
            tL_inputMediaUploadedDocument.mime_type = this.mimeType;
            ConnectionsManager.getInstance(i).sendRequest(tL_messages_uploadMedia, new C28941(runnable), 2);
        }

        /* JADX INFO: renamed from: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1 */
        class C28941 implements RequestDelegate {
            final /* synthetic */ Runnable val$onFinish;

            C28941(Runnable runnable) {
                this.val$onFinish = runnable;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, TLRPC.TL_error tL_error) {
                final Runnable runnable = this.val$onFinish;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tLObject, runnable);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, Runnable runnable) {
                if (tLObject instanceof TLRPC.TL_messageMediaDocument) {
                    ImportingSticker.this.item = new TLRPC.TL_inputStickerSetItem();
                    ImportingSticker.this.item.document = new TLRPC.TL_inputDocument();
                    ImportingSticker importingSticker = ImportingSticker.this;
                    TLRPC.TL_inputStickerSetItem tL_inputStickerSetItem = importingSticker.item;
                    TLRPC.InputDocument inputDocument = tL_inputStickerSetItem.document;
                    TLRPC.Document document = ((TLRPC.TL_messageMediaDocument) tLObject).document;
                    inputDocument.f1677id = document.f1668id;
                    inputDocument.access_hash = document.access_hash;
                    inputDocument.file_reference = document.file_reference;
                    String str = importingSticker.emoji;
                    if (str == null) {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    tL_inputStickerSetItem.emoji = str;
                    importingSticker.mimeType = document.mime_type;
                } else {
                    ImportingSticker importingSticker2 = ImportingSticker.this;
                    if (importingSticker2.animated) {
                        importingSticker2.mimeType = "application/x-bad-tgsticker";
                    }
                }
                runnable.run();
            }
        }
    }

    public class ImportingStickers {
        public double estimatedUploadSpeed;
        private long lastUploadSize;
        private long lastUploadTime;
        public String shortName;
        public String software;
        public String title;
        public long totalSize;
        public int uploadProgress;
        public long uploadedSize;
        public HashMap<String, ImportingSticker> uploadSet = new HashMap<>();
        public HashMap<String, Float> uploadProgresses = new HashMap<>();
        public HashMap<String, Long> uploadSize = new HashMap<>();
        public ArrayList<ImportingSticker> uploadMedia = new ArrayList<>();
        public int timeUntilFinish = Integer.MAX_VALUE;

        public ImportingStickers() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initImport() {
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            this.lastUploadTime = SystemClock.elapsedRealtime();
            int size = this.uploadMedia.size();
            for (int i = 0; i < size; i++) {
                SendMessagesHelper.this.getFileLoader().uploadFile(this.uploadMedia.get(i).path, false, true, 67108864);
            }
        }

        public long getUploadedCount() {
            return this.uploadedSize;
        }

        public long getTotalCount() {
            return this.totalSize;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileFailedToUpload(String str) {
            ImportingSticker importingStickerRemove = this.uploadSet.remove(str);
            if (importingStickerRemove != null) {
                this.uploadMedia.remove(importingStickerRemove);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUploadProgress(String str, long j, float f) {
            this.uploadProgresses.put(str, Float.valueOf(f));
            this.uploadSize.put(str, Long.valueOf(j));
            this.uploadedSize = 0L;
            Iterator<Map.Entry<String, Long>> it = this.uploadSize.entrySet().iterator();
            while (it.hasNext()) {
                this.uploadedSize += it.next().getValue().longValue();
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.uploadedSize;
            if (j2 != this.lastUploadSize) {
                if (jElapsedRealtime != this.lastUploadTime) {
                    double d = (j2 - r0) / ((jElapsedRealtime - r2) / 1000.0d);
                    double d2 = this.estimatedUploadSpeed;
                    if (d2 == 0.0d) {
                        this.estimatedUploadSpeed = d;
                    } else {
                        this.estimatedUploadSpeed = (d * 0.01d) + (0.99d * d2);
                    }
                    this.timeUntilFinish = (int) (((this.totalSize - j2) * 1000) / this.estimatedUploadSpeed);
                    this.lastUploadSize = j2;
                    this.lastUploadTime = jElapsedRealtime;
                }
            }
            int uploadedCount = (int) ((getUploadedCount() / getTotalCount()) * 100.0f);
            if (this.uploadProgress != uploadedCount) {
                this.uploadProgress = uploadedCount;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onMediaImport(final String str, long j, TLRPC.InputFile inputFile) {
            addUploadProgress(str, j, 1.0f);
            ImportingSticker importingSticker = this.uploadSet.get(str);
            if (importingSticker == null) {
                return;
            }
            importingSticker.uploadMedia(SendMessagesHelper.this.currentAccount, inputFile, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onMediaImport$0(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMediaImport$0(String str) {
            this.uploadSet.remove(str);
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            if (this.uploadSet.isEmpty()) {
                startImport();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startImport() {
            TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet = new TLRPC.TL_stickers_createStickerSet();
            tL_stickers_createStickerSet.user_id = new TLRPC.TL_inputUserSelf();
            tL_stickers_createStickerSet.title = this.title;
            tL_stickers_createStickerSet.short_name = this.shortName;
            String str = this.software;
            if (str != null) {
                tL_stickers_createStickerSet.software = str;
                tL_stickers_createStickerSet.flags |= 8;
            }
            int size = this.uploadMedia.size();
            for (int i = 0; i < size; i++) {
                TLRPC.TL_inputStickerSetItem tL_inputStickerSetItem = this.uploadMedia.get(i).item;
                if (tL_inputStickerSetItem != null) {
                    tL_stickers_createStickerSet.stickers.add(tL_inputStickerSetItem);
                }
            }
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_stickers_createStickerSet, new C28951(tL_stickers_createStickerSet));
        }

        /* JADX INFO: renamed from: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1 */
        /* JADX INFO: loaded from: classes5.dex */
        class C28951 implements RequestDelegate {
            final /* synthetic */ TLRPC.TL_stickers_createStickerSet val$req;

            C28951(TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet) {
                this.val$req = tL_stickers_createStickerSet;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC.TL_error tL_error) {
                final TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tL_error, tL_stickers_createStickerSet, tLObject);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC.TL_error tL_error, TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet, TLObject tLObject) {
                SendMessagesHelper.this.importingStickersMap.remove(ImportingStickers.this.shortName);
                if (tL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName);
                } else {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName, tL_stickers_createStickerSet, tL_error);
                }
                if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
                    NotificationCenter notificationCenter = SendMessagesHelper.this.getNotificationCenter();
                    int i = NotificationCenter.stickersImportComplete;
                    if (notificationCenter.hasObservers(i)) {
                        SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, tLObject);
                    } else {
                        SendMessagesHelper.this.getMediaDataController().toggleStickerSet(null, tLObject, 2, null, false, false);
                    }
                }
            }
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingStickersMap.remove(this.shortName);
            }
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        mediaSendThreadPool = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        Instance = new SendMessagesHelper[16];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class MediaSendPrepareWorker {
        public volatile String parentObject;
        public volatile TLRPC.TL_photo photo;
        public CountDownLatch sync;

        private MediaSendPrepareWorker() {
        }
    }

    @SuppressLint({"MissingPermission"})
    public static class LocationProvider {
        private LocationProviderDelegate delegate;
        private GpsLocationListener gpsLocationListener;
        private Location lastKnownLocation;
        private LocationManager locationManager;
        private Runnable locationQueryCancelRunnable;
        private GpsLocationListener networkLocationListener;

        public interface LocationProviderDelegate {
            void onLocationAcquired(Location location);

            void onUnableLocationAcquire();
        }

        private class GpsLocationListener implements LocationListener {
            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) {
            }

            private GpsLocationListener() {
            }

            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location == null || LocationProvider.this.locationQueryCancelRunnable == null) {
                    return;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("found location " + location);
                }
                LocationProvider.this.lastKnownLocation = location;
                if (location.getAccuracy() < 100.0f) {
                    if (LocationProvider.this.delegate != null) {
                        LocationProvider.this.delegate.onLocationAcquired(location);
                    }
                    if (LocationProvider.this.locationQueryCancelRunnable != null) {
                        AndroidUtilities.cancelRunOnUIThread(LocationProvider.this.locationQueryCancelRunnable);
                    }
                    LocationProvider.this.cleanup();
                }
            }
        }

        public LocationProvider() {
            this.gpsLocationListener = new GpsLocationListener();
            this.networkLocationListener = new GpsLocationListener();
        }

        public LocationProvider(LocationProviderDelegate locationProviderDelegate) {
            this.gpsLocationListener = new GpsLocationListener();
            this.networkLocationListener = new GpsLocationListener();
            this.delegate = locationProviderDelegate;
        }

        public void setDelegate(LocationProviderDelegate locationProviderDelegate) {
            this.delegate = locationProviderDelegate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanup() {
            this.locationManager.removeUpdates(this.gpsLocationListener);
            this.locationManager.removeUpdates(this.networkLocationListener);
            this.lastKnownLocation = null;
            this.locationQueryCancelRunnable = null;
        }

        public void start() {
            if (this.locationManager == null) {
                this.locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
            }
            try {
                this.locationManager.requestLocationUpdates("gps", 1L, 0.0f, this.gpsLocationListener);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            try {
                this.locationManager.requestLocationUpdates("network", 1L, 0.0f, this.networkLocationListener);
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
            try {
                Location lastKnownLocation = this.locationManager.getLastKnownLocation("gps");
                this.lastKnownLocation = lastKnownLocation;
                if (lastKnownLocation == null) {
                    this.lastKnownLocation = this.locationManager.getLastKnownLocation("network");
                }
            } catch (Exception e3) {
                FileLog.m1136e(e3);
            }
            Runnable runnable = this.locationQueryCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$LocationProvider$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$0();
                }
            };
            this.locationQueryCancelRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 5000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0() {
            LocationProviderDelegate locationProviderDelegate = this.delegate;
            if (locationProviderDelegate != null) {
                Location location = this.lastKnownLocation;
                if (location != null) {
                    locationProviderDelegate.onLocationAcquired(location);
                } else {
                    locationProviderDelegate.onUnableLocationAcquire();
                }
            }
            cleanup();
        }

        public void stop() {
            if (this.locationManager == null) {
                return;
            }
            Runnable runnable = this.locationQueryCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            cleanup();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    protected class DelayedMessageSendAfterRequest {
        public DelayedMessage delayedMessage;
        public MessageObject msgObj;
        public ArrayList<MessageObject> msgObjs;
        public String originalPath;
        public ArrayList<String> originalPaths;
        public Object parentObject;
        public ArrayList<Object> parentObjects;
        public TLObject request;
        public boolean scheduled;

        protected DelayedMessageSendAfterRequest() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    protected class DelayedMessage {
        public TLRPC.InputFile coverFile;
        public TLRPC.PhotoSize coverPhotoSize;
        public TLRPC.EncryptedChat encryptedChat;
        public HashMap<Object, Object> extraHashMap;
        public int finalGroupMessage;
        public boolean forceReupload;
        public long groupId;
        public String httpLocation;
        public ArrayList<String> httpLocations;
        public ArrayList<TLRPC.InputMedia> inputMedias;
        public TLRPC.InputMedia inputUploadMedia;
        public TLObject locationParent;
        public ArrayList<TLRPC.PhotoSize> locations;
        public ArrayList<MessageObject> messageObjects;
        public ArrayList<TLRPC.Message> messages;
        public MessageObject obj;
        public String originalPath;
        public ArrayList<String> originalPaths;
        public boolean paidMedia;
        public Object parentObject;
        public ArrayList<Object> parentObjects;
        public long peer;
        public boolean performCoverUpload;
        public boolean performMediaUpload;
        public TLRPC.PhotoSize photoSize;
        ArrayList<DelayedMessageSendAfterRequest> requests;
        private boolean retriedToSend;
        public boolean[] retriedToSendArray;
        public boolean scheduled;
        public TLObject sendEncryptedRequest;
        public TLObject sendRequest;
        public int topMessageId;
        public int type;
        public VideoEditedInfo videoEditedInfo;
        public ArrayList<VideoEditedInfo> videoEditedInfos;

        public boolean getRetriedToSend(int i) {
            boolean[] zArr;
            if (i < 0 || (zArr = this.retriedToSendArray) == null || i >= zArr.length) {
                return this.retriedToSend;
            }
            return zArr[i];
        }

        public void setRetriedToSend(int i, boolean z) {
            if (i < 0) {
                this.retriedToSend = z;
                return;
            }
            if (this.retriedToSendArray == null) {
                this.retriedToSendArray = new boolean[this.messageObjects.size()];
            }
            this.retriedToSendArray[i] = z;
        }

        public DelayedMessage(long j) {
            this.peer = j;
        }

        public void initForGroup(long j) {
            this.type = 4;
            this.groupId = j;
            this.messageObjects = new ArrayList<>();
            this.messages = new ArrayList<>();
            this.inputMedias = new ArrayList<>();
            this.originalPaths = new ArrayList<>();
            this.parentObjects = new ArrayList<>();
            this.extraHashMap = new HashMap<>();
            this.locations = new ArrayList<>();
            this.httpLocations = new ArrayList<>();
            this.videoEditedInfos = new ArrayList<>();
        }

        public void addDelayedRequest(TLObject tLObject, MessageObject messageObject, String str, Object obj, DelayedMessage delayedMessage, boolean z) {
            DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = SendMessagesHelper.this.new DelayedMessageSendAfterRequest();
            delayedMessageSendAfterRequest.request = tLObject;
            delayedMessageSendAfterRequest.msgObj = messageObject;
            delayedMessageSendAfterRequest.originalPath = str;
            delayedMessageSendAfterRequest.delayedMessage = delayedMessage;
            delayedMessageSendAfterRequest.parentObject = obj;
            delayedMessageSendAfterRequest.scheduled = z;
            if (this.requests == null) {
                this.requests = new ArrayList<>();
            }
            this.requests.add(delayedMessageSendAfterRequest);
        }

        public void addDelayedRequest(TLObject tLObject, ArrayList<MessageObject> arrayList, ArrayList<String> arrayList2, ArrayList<Object> arrayList3, DelayedMessage delayedMessage, boolean z) {
            DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = SendMessagesHelper.this.new DelayedMessageSendAfterRequest();
            delayedMessageSendAfterRequest.request = tLObject;
            delayedMessageSendAfterRequest.msgObjs = arrayList;
            delayedMessageSendAfterRequest.originalPaths = arrayList2;
            delayedMessageSendAfterRequest.delayedMessage = delayedMessage;
            delayedMessageSendAfterRequest.parentObjects = arrayList3;
            delayedMessageSendAfterRequest.scheduled = z;
            if (this.requests == null) {
                this.requests = new ArrayList<>();
            }
            this.requests.add(delayedMessageSendAfterRequest);
        }

        public void sendDelayedRequests() {
            ArrayList<DelayedMessageSendAfterRequest> arrayList = this.requests;
            if (arrayList != null) {
                int i = this.type;
                if (i == 4 || i == 0) {
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = this.requests.get(i2);
                        TLObject tLObject = delayedMessageSendAfterRequest.request;
                        if (tLObject instanceof TLRPC.TL_messages_sendEncryptedMultiMedia) {
                            SendMessagesHelper.this.getSecretChatHelper().performSendEncryptedRequest((TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessageSendAfterRequest.request, this);
                        } else if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
                            SendMessagesHelper.this.lambda$performSendMessageRequestMulti$52((TLRPC.TL_messages_sendMultiMedia) tLObject, delayedMessageSendAfterRequest.msgObjs, delayedMessageSendAfterRequest.originalPaths, delayedMessageSendAfterRequest.parentObjects, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.scheduled);
                        } else if ((tLObject instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) tLObject).media instanceof TLRPC.TL_inputMediaPaidMedia)) {
                            SendMessagesHelper.this.lambda$performSendMessageRequestMulti$52((TLRPC.TL_messages_sendMedia) tLObject, delayedMessageSendAfterRequest.msgObjs, delayedMessageSendAfterRequest.originalPaths, delayedMessageSendAfterRequest.parentObjects, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.scheduled);
                        } else {
                            SendMessagesHelper.this.performSendMessageRequest(tLObject, delayedMessageSendAfterRequest.msgObj, delayedMessageSendAfterRequest.originalPath, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.parentObject, null, delayedMessageSendAfterRequest.scheduled);
                        }
                    }
                    this.requests = null;
                }
            }
        }

        public void markAsError() {
            if (this.type == 4) {
                for (int i = 0; i < this.messageObjects.size(); i++) {
                    MessageObject messageObject = this.messageObjects.get(i);
                    SendMessagesHelper.this.getMessagesStorage().markMessageAsSendError(messageObject.messageOwner, messageObject.scheduled ? 1 : 0);
                    TLRPC.Message message = messageObject.messageOwner;
                    message.send_state = 2;
                    message.errorAllowedPriceStars = 0L;
                    message.errorNewPriceStars = 0L;
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
                    SendMessagesHelper.this.processSentMessage(messageObject.getId());
                    SendMessagesHelper.this.removeFromUploadingMessages(messageObject.getId(), this.scheduled);
                }
                SendMessagesHelper.this.delayedMessages.remove("group_" + this.groupId);
            } else {
                MessagesStorage messagesStorage = SendMessagesHelper.this.getMessagesStorage();
                MessageObject messageObject2 = this.obj;
                messagesStorage.markMessageAsSendError(messageObject2.messageOwner, messageObject2.scheduled ? 1 : 0);
                TLRPC.Message message2 = this.obj.messageOwner;
                message2.send_state = 2;
                message2.errorAllowedPriceStars = 0L;
                message2.errorNewPriceStars = 0L;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(this.obj.getId()));
                SendMessagesHelper.this.processSentMessage(this.obj.getId());
                SendMessagesHelper.this.removeFromUploadingMessages(this.obj.getId(), this.scheduled);
            }
            sendDelayedRequests();
        }
    }

    public static SendMessagesHelper getInstance(int i) {
        SendMessagesHelper sendMessagesHelper;
        SendMessagesHelper sendMessagesHelper2 = Instance[i];
        if (sendMessagesHelper2 != null) {
            return sendMessagesHelper2;
        }
        synchronized (SendMessagesHelper.class) {
            try {
                sendMessagesHelper = Instance[i];
                if (sendMessagesHelper == null) {
                    SendMessagesHelper[] sendMessagesHelperArr = Instance;
                    SendMessagesHelper sendMessagesHelper3 = new SendMessagesHelper(i);
                    sendMessagesHelperArr[i] = sendMessagesHelper3;
                    sendMessagesHelper = sendMessagesHelper3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sendMessagesHelper;
    }

    public SendMessagesHelper(int i) {
        super(i);
        this.delayedMessages = new HashMap<>();
        this.unsentMessages = new SparseArray<>();
        this.sendingMessages = new SparseArray<>();
        this.editingMessages = new SparseArray<>();
        this.uploadMessages = new SparseArray<>();
        this.sendingMessagesIdDialogs = new LongSparseArray();
        this.uploadingMessagesIdDialogs = new LongSparseArray();
        this.waitingForLocation = new HashMap<>();
        this.waitingForCallback = new HashMap<>();
        this.waitingForCallbackMap = new HashMap<>();
        this.waitingForVote = new HashMap<>();
        this.voteSendTime = new LongSparseArray();
        this.importingHistoryFiles = new HashMap<>();
        this.importingHistoryMap = new LongSparseArray();
        this.importingStickersFiles = new HashMap<>();
        this.importingStickersMap = new HashMap<>();
        this.locationProvider = new LocationProvider(new LocationProvider.LocationProviderDelegate() { // from class: org.telegram.messenger.SendMessagesHelper.1
            @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
            public void onLocationAcquired(Location location) {
                SendMessagesHelper.this.sendLocation(location);
                SendMessagesHelper.this.waitingForLocation.clear();
            }

            @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
            public void onUnableLocationAcquire() {
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.wasUnableToFindCurrentLocation, new HashMap(SendMessagesHelper.this.waitingForLocation));
                SendMessagesHelper.this.waitingForLocation.clear();
            }
        });
        this.waitingForTodoUpdate = new HashMap<>();
        this.hooks = PluginsController.getInstance();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploaded);
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploadProgressChanged);
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploadFailed);
        getNotificationCenter().addObserver(this, NotificationCenter.filePreparingStarted);
        getNotificationCenter().addObserver(this, NotificationCenter.fileNewChunkAvailable);
        getNotificationCenter().addObserver(this, NotificationCenter.filePreparingFailed);
        getNotificationCenter().addObserver(this, NotificationCenter.httpFileDidFailedLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.httpFileDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoadFailed);
    }

    public void cleanup() {
        this.delayedMessages.clear();
        this.unsentMessages.clear();
        this.sendingMessages.clear();
        this.editingMessages.clear();
        this.sendingMessagesIdDialogs.clear();
        this.uploadMessages.clear();
        this.uploadingMessagesIdDialogs.clear();
        this.waitingForLocation.clear();
        this.waitingForCallback.clear();
        this.waitingForVote.clear();
        this.importingHistoryFiles.clear();
        this.importingHistoryMap.clear();
        this.importingStickersFiles.clear();
        this.importingStickersMap.clear();
        this.locationProvider.stop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x08a1  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x08df  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v71 */
    /* JADX WARN: Type inference failed for: r1v72 */
    /* JADX WARN: Type inference failed for: r1v83 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18, types: [int] */
    /* JADX WARN: Type inference failed for: r9v29 */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        ArrayList<DelayedMessage> arrayList;
        byte b;
        final MessageObject messageObject;
        MessageObject messageObject2;
        String str2;
        ArrayList<DelayedMessage> arrayList2;
        ArrayList<DelayedMessage> arrayList3;
        int quickReplyId;
        int i3;
        int quickReplyId2;
        int i4;
        TLRPC.InputMedia inputMedia;
        int i5;
        char c;
        String str3;
        TLRPC.InputFile inputFile;
        ArrayList<DelayedMessage> arrayList4;
        String str4;
        TLRPC.InputEncryptedFile inputEncryptedFile;
        ?? r9;
        int i6;
        TLObject tLObject;
        int i7;
        TLRPC.TL_decryptedMessage tL_decryptedMessage;
        String str5;
        ArrayList<DelayedMessage> arrayList5;
        int i8;
        TLRPC.InputEncryptedFile inputEncryptedFile2;
        int i9;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize photoSize2;
        TLRPC.PhotoSize photoSize3;
        TLRPC.PhotoSize photoSize4;
        TLRPC.PhotoSize photoSize5;
        MessageObject messageObject3;
        VideoEditedInfo videoEditedInfo;
        final SendMessagesHelper sendMessagesHelper = this;
        int i10 = 0;
        ?? r12 = 1;
        if (i == NotificationCenter.fileUploadProgressChanged) {
            String str6 = (String) objArr[0];
            ImportingHistory importingHistory = sendMessagesHelper.importingHistoryFiles.get(str6);
            if (importingHistory != null) {
                importingHistory.addUploadProgress(str6, ((Long) objArr[1]).longValue(), r3.longValue() / ((Long) objArr[2]).longValue());
            }
            ImportingStickers importingStickers = sendMessagesHelper.importingStickersFiles.get(str6);
            if (importingStickers != null) {
                importingStickers.addUploadProgress(str6, ((Long) objArr[1]).longValue(), r3.longValue() / ((Long) objArr[2]).longValue());
                return;
            }
            return;
        }
        char c2 = 5;
        String str7 = "_t";
        int i11 = 4;
        if (i == NotificationCenter.fileUploaded) {
            String str8 = (String) objArr[0];
            TLRPC.InputFile inputFile2 = (TLRPC.InputFile) objArr[1];
            TLRPC.InputEncryptedFile inputEncryptedFile3 = (TLRPC.InputEncryptedFile) objArr[2];
            ImportingHistory importingHistory2 = sendMessagesHelper.importingHistoryFiles.get(str8);
            if (importingHistory2 != null) {
                if (str8.equals(importingHistory2.historyPath)) {
                    importingHistory2.initImport(inputFile2);
                } else {
                    importingHistory2.onMediaImport(str8, ((Long) objArr[5]).longValue(), inputFile2);
                }
            }
            ImportingStickers importingStickers2 = sendMessagesHelper.importingStickersFiles.get(str8);
            if (importingStickers2 != null) {
                importingStickers2.onMediaImport(str8, ((Long) objArr[5]).longValue(), inputFile2);
            }
            ArrayList<DelayedMessage> arrayList6 = sendMessagesHelper.delayedMessages.get(str8);
            if (arrayList6 != null) {
                int i12 = 0;
                while (i12 < arrayList6.size()) {
                    DelayedMessage delayedMessage = arrayList6.get(i12);
                    TLObject tLObject2 = delayedMessage.sendRequest;
                    if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
                        inputMedia = ((TLRPC.TL_messages_sendMedia) tLObject2).media;
                        if (inputMedia instanceof TLRPC.TL_inputMediaPaidMedia) {
                            HashMap<Object, Object> map = delayedMessage.extraHashMap;
                            if (map == null) {
                                inputMedia = (TLRPC.InputMedia) ((TLRPC.TL_inputMediaPaidMedia) inputMedia).extended_media.get(i10);
                            } else {
                                inputMedia = (TLRPC.InputMedia) map.get(str8);
                            }
                        }
                    } else if (tLObject2 instanceof TLRPC.TL_messages_editMessage) {
                        inputMedia = ((TLRPC.TL_messages_editMessage) tLObject2).media;
                    } else {
                        inputMedia = tLObject2 instanceof TLRPC.TL_messages_sendMultiMedia ? (TLRPC.InputMedia) delayedMessage.extraHashMap.get(str8) : null;
                    }
                    if (inputFile2 == null || inputMedia == null) {
                        int i13 = i11;
                        i5 = i10;
                        c = c2;
                        str3 = str8;
                        inputFile = inputFile2;
                        arrayList4 = arrayList6;
                        int i14 = i12;
                        str4 = str7;
                        inputEncryptedFile = inputEncryptedFile3;
                        if (inputEncryptedFile == null || (tLObject = delayedMessage.sendEncryptedRequest) == null) {
                            r9 = r12;
                            i6 = i14;
                        } else {
                            if (delayedMessage.type == i13) {
                                TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) tLObject;
                                TLRPC.InputEncryptedFile inputEncryptedFile4 = (TLRPC.InputEncryptedFile) delayedMessage.extraHashMap.get(str3);
                                int iIndexOf = tL_messages_sendEncryptedMultiMedia.files.indexOf(inputEncryptedFile4);
                                if (iIndexOf >= 0) {
                                    tL_messages_sendEncryptedMultiMedia.files.set(iIndexOf, inputEncryptedFile);
                                    r9 = r12;
                                    i7 = i13;
                                    if (inputEncryptedFile4.f1678id == 1) {
                                        delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str3 + str4);
                                    }
                                    tL_decryptedMessage = (TLRPC.TL_decryptedMessage) tL_messages_sendEncryptedMultiMedia.messages.get(iIndexOf);
                                } else {
                                    r9 = r12;
                                    i7 = i13;
                                    tL_decryptedMessage = null;
                                }
                            } else {
                                r9 = r12;
                                i7 = i13;
                                tL_decryptedMessage = (TLRPC.TL_decryptedMessage) tLObject;
                            }
                            if (tL_decryptedMessage != null) {
                                TLRPC.DecryptedMessageMedia decryptedMessageMedia = tL_decryptedMessage.media;
                                if ((decryptedMessageMedia instanceof TLRPC.TL_decryptedMessageMediaVideo) || (decryptedMessageMedia instanceof TLRPC.TL_decryptedMessageMediaPhoto) || (decryptedMessageMedia instanceof TLRPC.TL_decryptedMessageMediaDocument)) {
                                    tL_decryptedMessage.media.size = ((Long) objArr[c]).longValue();
                                }
                                TLRPC.DecryptedMessageMedia decryptedMessageMedia2 = tL_decryptedMessage.media;
                                decryptedMessageMedia2.key = (byte[]) objArr[3];
                                decryptedMessageMedia2.f1664iv = (byte[]) objArr[i7];
                                if (delayedMessage.type == i7) {
                                    sendMessagesHelper.uploadMultiMedia(delayedMessage, null, inputEncryptedFile, str3);
                                } else {
                                    SecretChatHelper secretChatHelper = sendMessagesHelper.getSecretChatHelper();
                                    MessageObject messageObject4 = delayedMessage.obj;
                                    secretChatHelper.performSendEncryptedRequest(tL_decryptedMessage, messageObject4.messageOwner, delayedMessage.encryptedChat, inputEncryptedFile, delayedMessage.originalPath, messageObject4);
                                }
                            }
                            arrayList4.remove(i14);
                            i6 = i14 - 1;
                        }
                    } else {
                        int i15 = delayedMessage.type;
                        if (i15 == 0) {
                            inputMedia.file = inputFile2;
                            i5 = i10;
                            c = c2;
                            str5 = str7;
                            i8 = i12;
                            inputFile = inputFile2;
                            inputEncryptedFile2 = inputEncryptedFile3;
                            arrayList5 = arrayList6;
                            str3 = str8;
                            sendMessagesHelper.lambda$performSendMessageRequest$66(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, delayedMessage, true, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                        } else {
                            str5 = str7;
                            int i16 = i11;
                            arrayList5 = arrayList6;
                            i8 = i12;
                            i5 = i10;
                            c = c2;
                            inputEncryptedFile2 = inputEncryptedFile3;
                            str3 = str8;
                            inputFile = inputFile2;
                            if (i15 == r12) {
                                if (inputMedia.file == null && ((photoSize4 = delayedMessage.coverPhotoSize) == null || delayedMessage.performMediaUpload)) {
                                    inputMedia.file = inputFile;
                                    if (delayedMessage.coverFile == null && photoSize4 != null) {
                                        sendMessagesHelper.performSendDelayedMessage(delayedMessage);
                                    } else if (inputMedia.thumb == null && (photoSize5 = delayedMessage.photoSize) != null && photoSize5.location != null && ((messageObject3 = delayedMessage.obj) == null || (videoEditedInfo = messageObject3.videoEditedInfo) == null || !videoEditedInfo.isSticker)) {
                                        sendMessagesHelper.performSendDelayedMessage(delayedMessage);
                                    } else {
                                        sendMessagesHelper.performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                    }
                                } else if (delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null) {
                                    delayedMessage.coverFile = inputFile;
                                    delayedMessage.performCoverUpload = r12;
                                    sendMessagesHelper.performSendDelayedMessage(delayedMessage);
                                } else {
                                    inputMedia.thumb = inputFile;
                                    inputMedia.flags |= i16;
                                    sendMessagesHelper.performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                }
                            } else if (i15 == 2) {
                                if (inputMedia.file == null) {
                                    inputMedia.file = inputFile;
                                    if (inputMedia.thumb == null && (photoSize3 = delayedMessage.photoSize) != null && photoSize3.location != null) {
                                        sendMessagesHelper.performSendDelayedMessage(delayedMessage);
                                    } else {
                                        sendMessagesHelper.performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                        sendMessagesHelper = this;
                                    }
                                } else {
                                    inputMedia.thumb = inputFile;
                                    inputMedia.flags |= i16;
                                    sendMessagesHelper = this;
                                    sendMessagesHelper.performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                }
                            } else if (i15 == 3) {
                                inputMedia.file = inputFile;
                                sendMessagesHelper = this;
                                sendMessagesHelper.performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                            } else {
                                sendMessagesHelper = this;
                                if (i15 != i16) {
                                    str4 = str5;
                                } else if (inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument) {
                                    if (inputMedia.file == null) {
                                        inputMedia.file = inputFile;
                                        int iIndexOf2 = delayedMessage.messageObjects.indexOf((MessageObject) delayedMessage.extraHashMap.get(str3 + "_i"));
                                        HashMap<Object, Object> map2 = delayedMessage.extraHashMap;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(str3);
                                        str4 = str5;
                                        sb.append(str4);
                                        if (map2.containsKey(sb.toString())) {
                                            delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str3 + str4);
                                        }
                                        if (delayedMessage.extraHashMap.containsKey(str3 + "_ct")) {
                                            delayedMessage.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str3 + "_ct");
                                        }
                                        if (inputMedia.video_cover == null && (photoSize2 = delayedMessage.coverPhotoSize) != null && photoSize2.location != null) {
                                            delayedMessage.performCoverUpload = r12;
                                            sendMessagesHelper.performSendDelayedMessage(delayedMessage, iIndexOf2);
                                        } else if (inputMedia.thumb == null && (photoSize = delayedMessage.photoSize) != null && photoSize.location != null) {
                                            delayedMessage.performMediaUpload = r12;
                                            sendMessagesHelper.performSendDelayedMessage(delayedMessage, iIndexOf2);
                                        } else {
                                            sendMessagesHelper.uploadMultiMedia(delayedMessage, inputMedia, null, str3);
                                        }
                                    } else {
                                        str4 = str5;
                                        String str9 = (String) delayedMessage.extraHashMap.get(str3 + "_doc");
                                        MessageObject messageObject5 = (MessageObject) delayedMessage.extraHashMap.get(str9 + "_i");
                                        if (delayedMessage.extraHashMap.containsKey(str9 + str4)) {
                                            delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str9 + str4);
                                        }
                                        if (delayedMessage.extraHashMap.containsKey(str9 + "_ct")) {
                                            delayedMessage.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str9 + "_ct");
                                        }
                                        int iIndexOf3 = delayedMessage.messageObjects.indexOf(messageObject5);
                                        if (delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null) {
                                            delayedMessage.coverFile = inputFile;
                                            delayedMessage.performCoverUpload = r12;
                                            sendMessagesHelper.performSendDelayedMessage(delayedMessage, iIndexOf3);
                                        } else {
                                            inputMedia.thumb = inputFile;
                                            inputMedia.flags |= i16;
                                            sendMessagesHelper.uploadMultiMedia(delayedMessage, inputMedia, null, (String) delayedMessage.extraHashMap.get(str3 + "_o"));
                                        }
                                    }
                                } else {
                                    str4 = str5;
                                    if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                                        HashMap<Object, Object> map3 = delayedMessage.extraHashMap;
                                        if (map3 != null) {
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(str3);
                                            sb2.append("_doc");
                                            ?? r1 = map3.containsKey(sb2.toString()) ? r12 : i5;
                                            String str10 = r1 != 0 ? (String) delayedMessage.extraHashMap.get(str3 + "_doc") : str3;
                                            MessageObject messageObject6 = (MessageObject) delayedMessage.extraHashMap.get(str10 + "_i");
                                            HashMap<Object, Object> map4 = delayedMessage.extraHashMap;
                                            if (map4 != null) {
                                                if (map4.containsKey(str10 + str4)) {
                                                    delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str10 + str4);
                                                }
                                            }
                                            HashMap<Object, Object> map5 = delayedMessage.extraHashMap;
                                            if (map5 != null) {
                                                if (map5.containsKey(str10 + "_ct")) {
                                                    delayedMessage.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str10 + "_ct");
                                                }
                                            }
                                            int iIndexOf4 = delayedMessage.messageObjects.indexOf(messageObject6);
                                            if (r1 != 0 && delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null) {
                                                delayedMessage.coverFile = inputFile;
                                                delayedMessage.performCoverUpload = r12;
                                                sendMessagesHelper.performSendDelayedMessage(delayedMessage, iIndexOf4);
                                            } else if (delayedMessage.photoSize != null && inputMedia.thumb == null) {
                                                inputMedia.thumb = inputFile;
                                                inputMedia.flags |= i16;
                                                sendMessagesHelper.uploadMultiMedia(delayedMessage, inputMedia, null, (String) delayedMessage.extraHashMap.get(str3 + "_o"));
                                            } else {
                                                inputMedia.file = inputFile;
                                                sendMessagesHelper.uploadMultiMedia(delayedMessage, inputMedia, null, str3);
                                            }
                                        }
                                    } else {
                                        inputMedia.file = inputFile;
                                        sendMessagesHelper.uploadMultiMedia(delayedMessage, inputMedia, null, str3);
                                    }
                                }
                                i9 = i8;
                                arrayList4 = arrayList5;
                                arrayList4.remove(i9);
                                i6 = i9 - 1;
                                r9 = r12;
                                inputEncryptedFile = inputEncryptedFile2;
                            }
                        }
                        i9 = i8;
                        arrayList4 = arrayList5;
                        str4 = str5;
                        arrayList4.remove(i9);
                        i6 = i9 - 1;
                        r9 = r12;
                        inputEncryptedFile = inputEncryptedFile2;
                    }
                    i12 = i6 + r9;
                    inputEncryptedFile3 = inputEncryptedFile;
                    str7 = str4;
                    r12 = r9;
                    inputFile2 = inputFile;
                    i11 = 4;
                    c2 = c;
                    arrayList6 = arrayList4;
                    str8 = str3;
                    i10 = i5;
                }
                String str11 = str8;
                if (arrayList6.isEmpty()) {
                    sendMessagesHelper.delayedMessages.remove(str11);
                    return;
                }
                return;
            }
            return;
        }
        boolean z = true;
        if (i == NotificationCenter.fileUploadFailed) {
            String str12 = (String) objArr[0];
            boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
            ImportingHistory importingHistory3 = sendMessagesHelper.importingHistoryFiles.get(str12);
            if (importingHistory3 != null) {
                importingHistory3.onFileFailedToUpload(str12);
            }
            ImportingStickers importingStickers3 = sendMessagesHelper.importingStickersFiles.get(str12);
            if (importingStickers3 != null) {
                importingStickers3.onFileFailedToUpload(str12);
            }
            ArrayList<DelayedMessage> arrayList7 = sendMessagesHelper.delayedMessages.get(str12);
            if (arrayList7 != null) {
                int i17 = 0;
                while (i17 < arrayList7.size()) {
                    DelayedMessage delayedMessage2 = arrayList7.get(i17);
                    if ((zBooleanValue && delayedMessage2.sendEncryptedRequest != null) || (!zBooleanValue && delayedMessage2.sendRequest != null)) {
                        delayedMessage2.markAsError();
                        arrayList7.remove(i17);
                        i17--;
                    }
                    i17++;
                }
                if (arrayList7.isEmpty()) {
                    sendMessagesHelper.delayedMessages.remove(str12);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.filePreparingStarted) {
            MessageObject messageObject7 = (MessageObject) objArr[0];
            if (messageObject7.getId() == 0) {
                return;
            }
            ArrayList<DelayedMessage> arrayList8 = sendMessagesHelper.delayedMessages.get(messageObject7.messageOwner.attachPath);
            if (arrayList8 != null) {
                int i18 = 0;
                while (true) {
                    if (i18 >= arrayList8.size()) {
                        break;
                    }
                    DelayedMessage delayedMessage3 = arrayList8.get(i18);
                    if (delayedMessage3.type == 4) {
                        int iIndexOf5 = delayedMessage3.messageObjects.indexOf(messageObject7);
                        delayedMessage3.photoSize = (TLRPC.PhotoSize) delayedMessage3.extraHashMap.get(messageObject7.messageOwner.attachPath + "_t");
                        if (delayedMessage3.extraHashMap.containsKey(messageObject7.messageOwner.attachPath + "_ct")) {
                            delayedMessage3.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage3.extraHashMap.get(messageObject7.messageOwner.attachPath + "_ct");
                        }
                        delayedMessage3.performMediaUpload = z;
                        sendMessagesHelper.performSendDelayedMessage(delayedMessage3, iIndexOf5);
                        arrayList8.remove(i18);
                    } else {
                        if (delayedMessage3.obj == messageObject7) {
                            delayedMessage3.videoEditedInfo = null;
                            sendMessagesHelper.performSendDelayedMessage(delayedMessage3);
                            arrayList8.remove(i18);
                            break;
                        }
                        i18++;
                        z = true;
                    }
                }
                if (arrayList8.isEmpty()) {
                    sendMessagesHelper.delayedMessages.remove(messageObject7.messageOwner.attachPath);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileNewChunkAvailable) {
            MessageObject messageObject8 = (MessageObject) objArr[0];
            if (messageObject8.getId() == 0) {
                return;
            }
            String str13 = (String) objArr[1];
            long jLongValue = ((Long) objArr[2]).longValue();
            long jLongValue2 = ((Long) objArr[3]).longValue();
            sendMessagesHelper.getFileLoader().checkUploadNewDataAvailable(str13, DialogObject.isEncryptedDialog(messageObject8.getDialogId()), jLongValue, jLongValue2, (Float) objArr[4]);
            if (jLongValue2 == 0 || (arrayList3 = sendMessagesHelper.delayedMessages.get(messageObject8.messageOwner.attachPath)) == null) {
                return;
            }
            for (int i19 = 0; i19 < arrayList3.size(); i19++) {
                DelayedMessage delayedMessage4 = arrayList3.get(i19);
                if (delayedMessage4.type == 4) {
                    int i20 = 0;
                    while (true) {
                        if (i20 >= delayedMessage4.messageObjects.size()) {
                            break;
                        }
                        MessageObject messageObject9 = delayedMessage4.messageObjects.get(i20);
                        if (messageObject9 == messageObject8) {
                            delayedMessage4.obj.shouldRemoveVideoEditedInfo = true;
                            messageObject9.messageOwner.params.remove("ve");
                            TLRPC.Document document = delayedMessage4.obj.getDocument();
                            if (document != null) {
                                document.size = jLongValue2;
                            }
                            ArrayList<TLRPC.Message> arrayList9 = new ArrayList<>();
                            arrayList9.add(messageObject9.messageOwner);
                            if (messageObject9.isQuickReply()) {
                                quickReplyId2 = messageObject9.getQuickReplyId();
                                i4 = 5;
                            } else if (messageObject9.scheduled) {
                                quickReplyId2 = 0;
                                i4 = 1;
                            } else {
                                quickReplyId2 = 0;
                                i4 = 0;
                            }
                            if (!delayedMessage4.paidMedia || i20 == 0) {
                                sendMessagesHelper.getMessagesStorage().putMessages(arrayList9, false, true, false, 0, i4, quickReplyId2);
                            }
                        } else {
                            i20++;
                        }
                    }
                } else {
                    MessageObject messageObject10 = delayedMessage4.obj;
                    if (messageObject10 == messageObject8) {
                        messageObject10.shouldRemoveVideoEditedInfo = true;
                        messageObject10.messageOwner.params.remove("ve");
                        TLRPC.Document document2 = delayedMessage4.obj.getDocument();
                        if (document2 != null) {
                            document2.size = jLongValue2;
                        }
                        ArrayList<TLRPC.Message> arrayList10 = new ArrayList<>();
                        arrayList10.add(delayedMessage4.obj.messageOwner);
                        if (delayedMessage4.obj.isQuickReply()) {
                            quickReplyId = delayedMessage4.obj.getQuickReplyId();
                            i3 = 5;
                        } else if (delayedMessage4.obj.scheduled) {
                            quickReplyId = 0;
                            i3 = 1;
                        } else {
                            quickReplyId = 0;
                            i3 = 0;
                        }
                        sendMessagesHelper.getMessagesStorage().putMessages(arrayList10, false, true, false, 0, i3, quickReplyId);
                        return;
                    }
                }
            }
            return;
        }
        if (i == NotificationCenter.filePreparingFailed) {
            MessageObject messageObject11 = (MessageObject) objArr[0];
            if (messageObject11.getId() == 0 || (arrayList2 = sendMessagesHelper.delayedMessages.get((str2 = (String) objArr[1]))) == null) {
                return;
            }
            int i21 = 0;
            while (i21 < arrayList2.size()) {
                DelayedMessage delayedMessage5 = arrayList2.get(i21);
                if (delayedMessage5.type == 4) {
                    for (int i22 = 0; i22 < delayedMessage5.messages.size(); i22++) {
                        if (delayedMessage5.messageObjects.get(i22) == messageObject11) {
                            delayedMessage5.markAsError();
                            arrayList2.remove(i21);
                            i21--;
                            break;
                        }
                    }
                } else if (delayedMessage5.obj == messageObject11) {
                    delayedMessage5.markAsError();
                    arrayList2.remove(i21);
                    i21--;
                    break;
                }
                i21++;
            }
            if (arrayList2.isEmpty()) {
                sendMessagesHelper.delayedMessages.remove(str2);
                return;
            }
            return;
        }
        if (i == NotificationCenter.httpFileDidLoad) {
            final String str14 = (String) objArr[0];
            ArrayList<DelayedMessage> arrayList11 = sendMessagesHelper.delayedMessages.get(str14);
            if (arrayList11 != null) {
                for (int i23 = 0; i23 < arrayList11.size(); i23++) {
                    final DelayedMessage delayedMessage6 = arrayList11.get(i23);
                    int i24 = delayedMessage6.type;
                    if (i24 == 0) {
                        messageObject2 = delayedMessage6.obj;
                    } else {
                        if (i24 == 2) {
                            messageObject2 = delayedMessage6.obj;
                        } else if (i24 == 4) {
                            messageObject2 = (MessageObject) delayedMessage6.extraHashMap.get(str14);
                            if (messageObject2.getDocument() != null) {
                            }
                            if (b != 0) {
                                final File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str14) + "." + ImageLoader.getHttpUrlExtension(str14, "file"));
                                sendMessagesHelper = this;
                                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda61
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$didReceivedNotification$2(file, messageObject, delayedMessage6, str14);
                                    }
                                });
                            } else {
                                if (b == 1) {
                                    final File file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(str14) + ".gif");
                                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda62
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$didReceivedNotification$4(delayedMessage6, file2, messageObject);
                                        }
                                    });
                                }
                            }
                        } else {
                            b = -1;
                            messageObject = null;
                            if (b != 0) {
                            }
                        }
                        messageObject = messageObject2;
                        b = 1;
                        if (b != 0) {
                        }
                    }
                    messageObject = messageObject2;
                    b = 0;
                    if (b != 0) {
                    }
                }
                sendMessagesHelper.delayedMessages.remove(str14);
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoaded) {
            String str15 = (String) objArr[0];
            ArrayList<DelayedMessage> arrayList12 = sendMessagesHelper.delayedMessages.get(str15);
            if (arrayList12 != null) {
                for (int i25 = 0; i25 < arrayList12.size(); i25++) {
                    sendMessagesHelper.performSendDelayedMessage(arrayList12.get(i25));
                }
                sendMessagesHelper.delayedMessages.remove(str15);
                return;
            }
            return;
        }
        if ((i == NotificationCenter.httpFileDidFailedLoad || i == NotificationCenter.fileLoadFailed) && (arrayList = sendMessagesHelper.delayedMessages.get((str = (String) objArr[0]))) != null) {
            for (int i26 = 0; i26 < arrayList.size(); i26++) {
                arrayList.get(i26).markAsError();
            }
            sendMessagesHelper.delayedMessages.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$2(final File file, final MessageObject messageObject, final DelayedMessage delayedMessage, final String str) {
        final TLRPC.TL_photo tL_photoGeneratePhotoSizes = generatePhotoSizes(file.toString(), null);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didReceivedNotification$1(tL_photoGeneratePhotoSizes, messageObject, file, delayedMessage, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$1(TLRPC.TL_photo tL_photo, MessageObject messageObject, File file, DelayedMessage delayedMessage, String str) {
        if (tL_photo != null) {
            TLRPC.Message message = messageObject.messageOwner;
            message.media.photo = tL_photo;
            message.attachPath = file.toString();
            ArrayList<TLRPC.Message> arrayList = new ArrayList<>();
            arrayList.add(messageObject.messageOwner);
            getMessagesStorage().putMessages(arrayList, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, messageObject.messageOwner);
            ArrayList arrayList2 = tL_photo.sizes;
            delayedMessage.photoSize = (TLRPC.PhotoSize) arrayList2.get(arrayList2.size() - 1);
            delayedMessage.locationParent = tL_photo;
            delayedMessage.httpLocation = null;
            if (delayedMessage.type == 4) {
                delayedMessage.performMediaUpload = true;
                performSendDelayedMessage(delayedMessage, delayedMessage.messageObjects.indexOf(messageObject));
                return;
            } else {
                performSendDelayedMessage(delayedMessage);
                return;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1134e("can't load image " + str + " to file " + file.toString());
        }
        delayedMessage.markAsError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$4(final DelayedMessage delayedMessage, final File file, final MessageObject messageObject) {
        final TLRPC.Document document = delayedMessage.obj.getDocument();
        if (document.thumbs.isEmpty() || (document.thumbs.get(0).location instanceof TLRPC.TL_fileLocationUnavailable)) {
            try {
                Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(file.getAbsolutePath(), null, 90.0f, 90.0f, true);
                if (bitmapLoadBitmap != null) {
                    document.thumbs.clear();
                    document.thumbs.add(ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, 90.0f, 90.0f, 55, delayedMessage.sendEncryptedRequest != null));
                    bitmapLoadBitmap.recycle();
                }
            } catch (Exception e) {
                document.thumbs.clear();
                FileLog.m1136e(e);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didReceivedNotification$3(delayedMessage, file, document, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$3(DelayedMessage delayedMessage, File file, TLRPC.Document document, MessageObject messageObject) {
        delayedMessage.httpLocation = null;
        delayedMessage.obj.messageOwner.attachPath = file.toString();
        if (!document.thumbs.isEmpty()) {
            TLRPC.PhotoSize photoSize = document.thumbs.get(0);
            if (!(photoSize instanceof TLRPC.TL_photoStrippedSize)) {
                delayedMessage.photoSize = photoSize;
                delayedMessage.locationParent = document;
            }
        }
        ArrayList<TLRPC.Message> arrayList = new ArrayList<>();
        arrayList.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
        delayedMessage.performMediaUpload = true;
        performSendDelayedMessage(delayedMessage);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, delayedMessage.obj.messageOwner);
    }

    private void revertEditingMessageObject(MessageObject messageObject) {
        messageObject.cancelEditing = true;
        TLRPC.Message message = messageObject.messageOwner;
        message.media = messageObject.previousMedia;
        message.message = messageObject.previousMessage;
        ArrayList<TLRPC.MessageEntity> arrayList = messageObject.previousMessageEntities;
        message.entities = arrayList;
        message.attachPath = messageObject.previousAttachPath;
        message.send_state = 0;
        if (arrayList != null) {
            message.flags |= 128;
        } else {
            message.flags &= -129;
        }
        messageObject.previousMedia = null;
        messageObject.previousMessage = null;
        messageObject.previousMessageEntities = null;
        messageObject.previousAttachPath = null;
        messageObject.videoEditedInfo = null;
        messageObject.type = -1;
        messageObject.setType();
        messageObject.caption = null;
        if (messageObject.type != 0) {
            messageObject.generateCaption();
        } else {
            messageObject.resetLayout();
        }
        ArrayList<TLRPC.Message> arrayList2 = new ArrayList<>();
        arrayList2.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(messageObject);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(messageObject.getDialogId()), arrayList3);
    }

    public void cancelSendingMessage(MessageObject messageObject) {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        if (messageObject != null && messageObject.type == 29) {
            Iterator<Map.Entry<String, ArrayList<DelayedMessage>>> it = this.delayedMessages.entrySet().iterator();
            DelayedMessage delayedMessage = null;
            while (it.hasNext()) {
                ArrayList<DelayedMessage> value = it.next().getValue();
                for (int i = 0; i < value.size(); i++) {
                    DelayedMessage delayedMessage2 = value.get(i);
                    if (delayedMessage2.type == 4) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= delayedMessage2.messageObjects.size()) {
                                break;
                            }
                            if (delayedMessage2.messageObjects.get(i2).getId() == messageObject.getId()) {
                                delayedMessage = delayedMessage2;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (delayedMessage != null) {
                        break;
                    }
                }
            }
            if (delayedMessage != null) {
                arrayList.clear();
                arrayList.addAll(delayedMessage.messageObjects);
            }
        }
        cancelSendingMessage(arrayList);
    }

    public void cancelSendingMessage(ArrayList<MessageObject> arrayList) {
        ArrayList<Integer> arrayList2;
        int i;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList<Integer> arrayList5 = new ArrayList<>();
        long j = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int quickReplyId = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= arrayList.size()) {
                break;
            }
            MessageObject messageObject = arrayList.get(i2);
            int i4 = messageObject.scheduled ? 1 : i3;
            long dialogId = messageObject.getDialogId();
            arrayList5.add(Integer.valueOf(messageObject.getId()));
            if (messageObject.isQuickReply()) {
                quickReplyId = messageObject.getQuickReplyId();
            }
            TLRPC.Message messageRemoveFromSendingMessages = removeFromSendingMessages(messageObject.getId(), messageObject.scheduled);
            if (messageRemoveFromSendingMessages != null) {
                getConnectionsManager().cancelRequest(messageRemoveFromSendingMessages.reqId, true);
            }
            StarsController.getInstance(this.currentAccount).hidePaidMessageToast(messageObject);
            for (Map.Entry<String, ArrayList<DelayedMessage>> entry : this.delayedMessages.entrySet()) {
                ArrayList<DelayedMessage> value = entry.getValue();
                boolean z3 = z2;
                int i5 = 0;
                while (true) {
                    if (i5 >= value.size()) {
                        arrayList2 = arrayList5;
                        i = i2;
                        break;
                    }
                    DelayedMessage delayedMessage = value.get(i5);
                    arrayList2 = arrayList5;
                    i = i2;
                    if (delayedMessage.type == 4) {
                        MessageObject messageObject2 = null;
                        int i6 = 0;
                        while (true) {
                            if (i6 >= delayedMessage.messageObjects.size()) {
                                i6 = -1;
                                break;
                            }
                            messageObject2 = delayedMessage.messageObjects.get(i6);
                            if (messageObject2.getId() == messageObject.getId()) {
                                removeFromUploadingMessages(messageObject.getId(), messageObject.scheduled);
                                break;
                            }
                            i6++;
                        }
                        if (i6 >= 0) {
                            delayedMessage.messageObjects.remove(i6);
                            delayedMessage.messages.remove(i6);
                            delayedMessage.originalPaths.remove(i6);
                            if (!delayedMessage.parentObjects.isEmpty()) {
                                delayedMessage.parentObjects.remove(i6);
                            }
                            TLObject tLObject = delayedMessage.sendRequest;
                            if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
                                ((TLRPC.TL_messages_sendMultiMedia) tLObject).multi_media.remove(i6);
                            } else if ((tLObject instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) tLObject).media instanceof TLRPC.TL_inputMediaPaidMedia)) {
                                ((TLRPC.TL_inputMediaPaidMedia) ((TLRPC.TL_messages_sendMedia) tLObject).media).extended_media.remove(i6);
                            } else {
                                TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                                tL_messages_sendEncryptedMultiMedia.messages.remove(i6);
                                tL_messages_sendEncryptedMultiMedia.files.remove(i6);
                            }
                            MediaController.getInstance().cancelVideoConvert(messageObject);
                            String str = (String) delayedMessage.extraHashMap.get(messageObject2);
                            if (str != null) {
                                arrayList3.add(str);
                            }
                            if (delayedMessage.messageObjects.isEmpty()) {
                                delayedMessage.sendDelayedRequests();
                            } else {
                                if (delayedMessage.finalGroupMessage == messageObject.getId()) {
                                    MessageObject messageObject3 = delayedMessage.messageObjects.get(r4.size() - 1);
                                    delayedMessage.finalGroupMessage = messageObject3.getId();
                                    messageObject3.messageOwner.params.put("final", "1");
                                    TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
                                    tL_messages_messages.messages.add(messageObject3.messageOwner);
                                    getMessagesStorage().putMessages((TLRPC.messages_Messages) tL_messages_messages, delayedMessage.peer, -2, 0, false, i4, 0L);
                                }
                                if (!arrayList4.contains(delayedMessage)) {
                                    arrayList4.add(delayedMessage);
                                }
                            }
                        }
                    } else if (delayedMessage.obj.getId() == messageObject.getId()) {
                        removeFromUploadingMessages(messageObject.getId(), messageObject.scheduled);
                        value.remove(i5);
                        delayedMessage.sendDelayedRequests();
                        MediaController.getInstance().cancelVideoConvert(delayedMessage.obj);
                        if (value.size() == 0) {
                            arrayList3.add(entry.getKey());
                            if (delayedMessage.sendEncryptedRequest != null) {
                                z = z3;
                            }
                        }
                    } else {
                        i5++;
                        arrayList5 = arrayList2;
                        i2 = i;
                    }
                }
                z2 = z3;
                arrayList5 = arrayList2;
                i2 = i;
            }
            i2++;
            j = dialogId;
            i3 = i4;
        }
        ArrayList<Integer> arrayList6 = arrayList5;
        for (int i7 = 0; i7 < arrayList3.size(); i7++) {
            String str2 = (String) arrayList3.get(i7);
            if (str2.startsWith("http")) {
                ImageLoader.getInstance().cancelLoadHttpFile(str2);
            } else {
                getFileLoader().cancelFileUpload(str2, z);
            }
            this.delayedMessages.remove(str2);
        }
        int size = arrayList4.size();
        for (int i8 = 0; i8 < size; i8++) {
            sendReadyToSendGroup((DelayedMessage) arrayList4.get(i8), false, true);
        }
        if (arrayList.size() == 1 && arrayList.get(0).isEditing() && arrayList.get(0).previousMedia != null) {
            revertEditingMessageObject(arrayList.get(0));
        } else {
            getMessagesController().deleteMessages(arrayList6, null, null, j, quickReplyId, false, (arrayList.isEmpty() || !arrayList.get(0).isQuickReply()) ? i3 != 0 ? 1 : 0 : 5);
        }
    }

    public boolean retrySendMessage(MessageObject messageObject, boolean z, long j) {
        if (messageObject.getId() >= 0) {
            if (messageObject.isEditing()) {
                editMessage(messageObject, null, null, null, null, null, null, true, messageObject.hasMediaSpoilers(), messageObject);
            }
            return false;
        }
        TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
        if (messageAction instanceof TLRPC.TL_messageEncryptedAction) {
            TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(messageObject.getDialogId())));
            if (encryptedChat == null) {
                getMessagesStorage().markMessageAsSendError(messageObject.messageOwner, messageObject.scheduled ? 1 : 0);
                messageObject.messageOwner.send_state = 2;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
                processSentMessage(messageObject.getId());
                return false;
            }
            TLRPC.Message message = messageObject.messageOwner;
            if (message.random_id == 0) {
                message.random_id = getNextRandomId();
            }
            TLRPC.DecryptedMessageAction decryptedMessageAction = messageObject.messageOwner.action.encryptedAction;
            if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionSetMessageTTL) {
                getSecretChatHelper().sendTTLMessage(encryptedChat, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionDeleteMessages) {
                getSecretChatHelper().sendMessagesDeleteMessage(encryptedChat, null, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionFlushHistory) {
                getSecretChatHelper().sendClearHistoryMessage(encryptedChat, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionNotifyLayer) {
                getSecretChatHelper().sendNotifyLayerMessage(encryptedChat, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionReadMessages) {
                getSecretChatHelper().sendMessagesReadMessage(encryptedChat, null, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages) {
                getSecretChatHelper().sendScreenshotMessage(encryptedChat, null, messageObject.messageOwner);
            } else if (!(decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionTyping)) {
                if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionResend) {
                    getSecretChatHelper().sendResendMessage(encryptedChat, 0, 0, messageObject.messageOwner);
                } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionCommitKey) {
                    getSecretChatHelper().sendCommitKeyMessage(encryptedChat, messageObject.messageOwner);
                } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionAbortKey) {
                    getSecretChatHelper().sendAbortKeyMessage(encryptedChat, messageObject.messageOwner, 0L);
                } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionRequestKey) {
                    getSecretChatHelper().sendRequestKeyMessage(encryptedChat, messageObject.messageOwner);
                } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionAcceptKey) {
                    getSecretChatHelper().sendAcceptKeyMessage(encryptedChat, messageObject.messageOwner);
                } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionNoop) {
                    getSecretChatHelper().sendNoopMessage(encryptedChat, messageObject.messageOwner);
                }
            }
            return true;
        }
        if (messageAction instanceof TLRPC.TL_messageActionScreenshotTaken) {
            sendScreenshotMessage(getMessagesController().getUser(Long.valueOf(messageObject.getDialogId())), messageObject.getReplyMsgId(), messageObject.messageOwner);
        }
        if (z) {
            this.unsentMessages.put(messageObject.getId(), messageObject);
        }
        SendMessageParams sendMessageParamsM1178of = SendMessageParams.m1178of(messageObject);
        sendMessageParamsM1178of.payStars = j;
        sendMessage(sendMessageParamsM1178of);
        return true;
    }

    protected void processSentMessage(int i) {
        int size = this.unsentMessages.size();
        this.unsentMessages.remove(i);
        if (size == 0 || this.unsentMessages.size() != 0) {
            return;
        }
        checkUnsentMessages();
    }

    public void processForwardFromMyName(MessageObject messageObject, long j, long j2, long j3, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject == null) {
            return;
        }
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.MessageMedia messageMedia = message.media;
        ArrayList arrayList = null;
        map = null;
        map = null;
        HashMap map = null;
        arrayList = null;
        if (messageMedia != null && !(messageMedia instanceof TLRPC.TL_messageMediaEmpty) && !(messageMedia instanceof TLRPC.TL_messageMediaWebPage) && !(messageMedia instanceof TLRPC.TL_messageMediaGame) && !(messageMedia instanceof TLRPC.TL_messageMediaInvoice)) {
            if (DialogObject.isEncryptedDialog(j)) {
                TLRPC.Message message2 = messageObject.messageOwner;
                if (message2.peer_id != null) {
                    TLRPC.MessageMedia messageMedia2 = message2.media;
                    if ((messageMedia2.photo instanceof TLRPC.TL_photo) || (messageMedia2.document instanceof TLRPC.TL_document)) {
                        map = new HashMap();
                        map.put("parentObject", "sent_" + messageObject.messageOwner.peer_id.channel_id + "_" + messageObject.getId() + "_" + messageObject.getDialogId() + "_" + messageObject.type + "_" + messageObject.getSize());
                    }
                }
            }
            HashMap map2 = map;
            TLRPC.Message message3 = messageObject.messageOwner;
            TLRPC.MessageMedia messageMedia3 = message3.media;
            TLRPC.Photo photo = messageMedia3.photo;
            if (photo instanceof TLRPC.TL_photo) {
                SendMessageParams sendMessageParamsM1185of = SendMessageParams.m1185of((TLRPC.TL_photo) photo, null, j, messageObject.replyMessageObject, null, message3.message, message3.entities, null, map2, true, 0, 0, messageMedia3.ttl_seconds, messageObject, false);
                sendMessageParamsM1185of.payStars = j2;
                sendMessageParamsM1185of.monoForumPeer = j3;
                sendMessageParamsM1185of.suggestionParams = messageSuggestionParams;
                sendMessage(sendMessageParamsM1185of);
                return;
            }
            TLRPC.Document document = messageMedia3.document;
            if (document instanceof TLRPC.TL_document) {
                SendMessageParams sendMessageParamsM1180of = SendMessageParams.m1180of((TLRPC.TL_document) document, null, message3.attachPath, j, messageObject.replyMessageObject, null, message3.message, message3.entities, null, map2, true, 0, 0, messageMedia3.ttl_seconds, messageObject, null, false);
                sendMessageParamsM1180of.payStars = j2;
                sendMessageParamsM1180of.monoForumPeer = j3;
                sendMessageParamsM1180of.suggestionParams = messageSuggestionParams;
                sendMessage(sendMessageParamsM1180of);
                return;
            }
            if ((messageMedia3 instanceof TLRPC.TL_messageMediaVenue) || (messageMedia3 instanceof TLRPC.TL_messageMediaGeo)) {
                SendMessageParams sendMessageParamsM1179of = SendMessageParams.m1179of(messageMedia3, j, messageObject.replyMessageObject, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0, 0);
                sendMessageParamsM1179of.payStars = j2;
                sendMessageParamsM1179of.monoForumPeer = j3;
                sendMessageParamsM1179of.suggestionParams = messageSuggestionParams;
                sendMessage(sendMessageParamsM1179of);
                return;
            }
            if (messageMedia3.phone_number != null) {
                TLRPC.TL_userContact_old2 tL_userContact_old2 = new TLRPC.TL_userContact_old2();
                TLRPC.MessageMedia messageMedia4 = messageObject.messageOwner.media;
                tL_userContact_old2.phone = messageMedia4.phone_number;
                tL_userContact_old2.first_name = messageMedia4.first_name;
                tL_userContact_old2.last_name = messageMedia4.last_name;
                tL_userContact_old2.f1825id = messageMedia4.user_id;
                SendMessageParams sendMessageParamsM1187of = SendMessageParams.m1187of((TLRPC.User) tL_userContact_old2, j, messageObject.replyMessageObject, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0, 0);
                sendMessageParamsM1187of.monoForumPeer = j3;
                sendMessageParamsM1187of.suggestionParams = messageSuggestionParams;
                sendMessageParamsM1187of.payStars = j2;
                sendMessage(sendMessageParamsM1187of);
                return;
            }
            if (DialogObject.isEncryptedDialog(j)) {
                return;
            }
            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
            arrayList2.add(messageObject);
            sendMessage(arrayList2, j, true, false, true, 0, 0, null, -1, j2, j3, messageSuggestionParams);
            return;
        }
        if (message.message != null) {
            TLRPC.WebPage webPage = messageMedia instanceof TLRPC.TL_messageMediaWebPage ? messageMedia.webpage : null;
            ArrayList arrayList3 = message.entities;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                arrayList = new ArrayList();
                for (int i = 0; i < messageObject.messageOwner.entities.size(); i++) {
                    TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) messageObject.messageOwner.entities.get(i);
                    if ((messageEntity instanceof TLRPC.TL_messageEntityBold) || (messageEntity instanceof TLRPC.TL_messageEntityItalic) || (messageEntity instanceof TLRPC.TL_messageEntityPre) || (messageEntity instanceof TLRPC.TL_messageEntityCode) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) || (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                        arrayList.add(messageEntity);
                    }
                }
            }
            SendMessageParams sendMessageParamsM1175of = SendMessageParams.m1175of(messageObject.messageOwner.message, j, messageObject.replyMessageObject, null, webPage, true, arrayList, null, null, true, 0, 0, null, false);
            sendMessageParamsM1175of.payStars = j2;
            sendMessageParamsM1175of.monoForumPeer = j3;
            sendMessageParamsM1175of.suggestionParams = messageSuggestionParams;
            sendMessage(sendMessageParamsM1175of);
            return;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            ArrayList<MessageObject> arrayList4 = new ArrayList<>();
            arrayList4.add(messageObject);
            sendMessage(arrayList4, j, true, false, true, 0, 0, null, -1, j2, j3, messageSuggestionParams);
        }
    }

    public void sendScreenshotMessage(TLRPC.User user, int i, TLRPC.Message message) {
        TLRPC.Message tL_messageService = message;
        if (user == null || i == 0 || user.f1825id == getUserConfig().getClientUserId()) {
            return;
        }
        TLRPC.TL_messages_sendScreenshotNotification tL_messages_sendScreenshotNotification = new TLRPC.TL_messages_sendScreenshotNotification();
        TLRPC.TL_inputPeerUser tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
        tL_messages_sendScreenshotNotification.peer = tL_inputPeerUser;
        tL_inputPeerUser.access_hash = user.access_hash;
        tL_inputPeerUser.user_id = user.f1825id;
        if (tL_messageService != null) {
            tL_messages_sendScreenshotNotification.reply_to = createReplyInput(i);
            tL_messages_sendScreenshotNotification.random_id = tL_messageService.random_id;
        } else {
            tL_messageService = new TLRPC.TL_messageService();
            tL_messageService.random_id = getNextRandomId();
            tL_messageService.dialog_id = user.f1825id;
            tL_messageService.unread = true;
            tL_messageService.out = true;
            int newMessageId = getUserConfig().getNewMessageId();
            tL_messageService.f1686id = newMessageId;
            tL_messageService.local_id = newMessageId;
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_messageService.from_id = tL_peerUser;
            tL_peerUser.user_id = getUserConfig().getClientUserId();
            tL_messageService.flags |= 264;
            TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
            tL_messageService.reply_to = tL_messageReplyHeader;
            tL_messageReplyHeader.flags |= 16;
            tL_messageReplyHeader.reply_to_msg_id = i;
            TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
            tL_messageService.peer_id = tL_peerUser2;
            tL_peerUser2.user_id = user.f1825id;
            tL_messageService.date = getConnectionsManager().getCurrentTime();
            tL_messageService.action = new TLRPC.TL_messageActionScreenshotTaken();
            getUserConfig().saveConfig(false);
        }
        tL_messages_sendScreenshotNotification.random_id = tL_messageService.random_id;
        MessageObject messageObject = new MessageObject(this.currentAccount, tL_messageService, false, true);
        messageObject.messageOwner.send_state = 1;
        messageObject.wasJustSent = true;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        getMessagesController().updateInterfaceWithMessages(tL_messageService.dialog_id, arrayList, 0);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        ArrayList<TLRPC.Message> arrayList2 = new ArrayList<>();
        arrayList2.add(tL_messageService);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, false, 0, 0L);
        performSendMessageRequest(tL_messages_sendScreenshotNotification, messageObject, null, null, null, null, false);
    }

    public void sendSticker(TLRPC.Document document, String str, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, int i2, boolean z2, Object obj, String str2, int i3, long j2, long j3, MessageSuggestionParams messageSuggestionParams) {
        sendSticker(document, str, j, null, null, messageObject, messageObject2, storyItem, replyQuote, sendAnimationData, z, i, i2, z2, obj, str2, i3, j2, j3, messageSuggestionParams);
    }

    public void sendSticker(TLRPC.Document document, String str, long j, CharSequence charSequence, VideoEditedInfo videoEditedInfo, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, int i2, boolean z2, Object obj, String str2, int i3, long j2, long j3, MessageSuggestionParams messageSuggestionParams) {
        sendSticker(document, str, j, charSequence, videoEditedInfo, messageObject, messageObject2, storyItem, replyQuote, sendAnimationData, z, i, i2, z2, obj, str2, i3, j2, j3, messageSuggestionParams, false);
    }

    public void sendSticker(TLRPC.Document document, String str, final long j, final CharSequence charSequence, final VideoEditedInfo videoEditedInfo, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final int i, final int i2, boolean z2, final Object obj, final String str2, final int i3, final long j2, final long j3, final MessageSuggestionParams messageSuggestionParams, final boolean z3) {
        final TLRPC.Document tL_document_layer82;
        HashMap map;
        TLRPC.PhotoSize tL_photoStrippedSize;
        byte[] bArr;
        if (document == null) {
            return;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            if (getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                return;
            }
            tL_document_layer82 = new TLRPC.TL_document_layer82();
            tL_document_layer82.f1668id = document.f1668id;
            tL_document_layer82.access_hash = document.access_hash;
            tL_document_layer82.date = document.date;
            tL_document_layer82.mime_type = document.mime_type;
            byte[] bArr2 = document.file_reference;
            tL_document_layer82.file_reference = bArr2;
            if (bArr2 == null) {
                tL_document_layer82.file_reference = new byte[0];
            }
            tL_document_layer82.size = document.size;
            tL_document_layer82.dc_id = document.dc_id;
            tL_document_layer82.attributes = new ArrayList<>();
            for (int i4 = 0; i4 < document.attributes.size(); i4++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i4);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    TLRPC.TL_documentAttributeVideo_layer159 tL_documentAttributeVideo_layer159 = new TLRPC.TL_documentAttributeVideo_layer159();
                    tL_documentAttributeVideo_layer159.flags = documentAttribute.flags;
                    tL_documentAttributeVideo_layer159.round_message = documentAttribute.round_message;
                    tL_documentAttributeVideo_layer159.supports_streaming = documentAttribute.supports_streaming;
                    tL_documentAttributeVideo_layer159.duration = documentAttribute.duration;
                    tL_documentAttributeVideo_layer159.f1671w = documentAttribute.f1671w;
                    tL_documentAttributeVideo_layer159.f1670h = documentAttribute.f1670h;
                    tL_document_layer82.attributes.add(tL_documentAttributeVideo_layer159);
                } else {
                    tL_document_layer82.attributes.add(documentAttribute);
                }
            }
            if (tL_document_layer82.mime_type == null) {
                tL_document_layer82.mime_type = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 10);
            if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoSizeProgressive) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize)) {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true);
                if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) || pathToAttach.exists()) {
                    try {
                        if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
                            tL_photoStrippedSize = new TLRPC.TL_photoStrippedSize();
                            bArr = closestPhotoSizeWithSize.bytes;
                        } else {
                            TLRPC.TL_photoCachedSize tL_photoCachedSize = new TLRPC.TL_photoCachedSize();
                            pathToAttach.length();
                            byte[] bArr3 = new byte[(int) pathToAttach.length()];
                            new RandomAccessFile(pathToAttach, "r").readFully(bArr3);
                            tL_photoStrippedSize = tL_photoCachedSize;
                            bArr = bArr3;
                        }
                        TLRPC.TL_fileLocation_layer82 tL_fileLocation_layer82 = new TLRPC.TL_fileLocation_layer82();
                        TLRPC.FileLocation fileLocation = closestPhotoSizeWithSize.location;
                        tL_fileLocation_layer82.dc_id = fileLocation.dc_id;
                        tL_fileLocation_layer82.volume_id = fileLocation.volume_id;
                        tL_fileLocation_layer82.local_id = fileLocation.local_id;
                        tL_fileLocation_layer82.secret = fileLocation.secret;
                        tL_photoStrippedSize.location = tL_fileLocation_layer82;
                        tL_photoStrippedSize.size = closestPhotoSizeWithSize.size;
                        tL_photoStrippedSize.f1694w = closestPhotoSizeWithSize.f1694w;
                        tL_photoStrippedSize.f1693h = closestPhotoSizeWithSize.f1693h;
                        tL_photoStrippedSize.type = closestPhotoSizeWithSize.type;
                        tL_photoStrippedSize.bytes = bArr;
                        tL_document_layer82.thumbs.add(tL_photoStrippedSize);
                        tL_document_layer82.flags |= 1;
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
            }
            if (tL_document_layer82.thumbs.isEmpty()) {
                TLRPC.TL_photoSizeEmpty tL_photoSizeEmpty = new TLRPC.TL_photoSizeEmpty();
                tL_photoSizeEmpty.type = "s";
                tL_document_layer82.thumbs.add(tL_photoSizeEmpty);
            }
        } else {
            tL_document_layer82 = document;
        }
        if (MessageObject.isGifDocument(tL_document_layer82)) {
            mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendSticker$6(tL_document_layer82, videoEditedInfo, j, messageObject, messageObject2, z, i, i2, obj, sendAnimationData, storyItem, replyQuote, str2, i3, j2, j3, messageSuggestionParams, charSequence, z3);
                }
            });
            return;
        }
        if (TextUtils.isEmpty(str)) {
            map = null;
        } else {
            map = new HashMap();
            map.put("query", str);
        }
        SendMessageParams sendMessageParamsM1180of = SendMessageParams.m1180of((TLRPC.TL_document) tL_document_layer82, null, null, j, messageObject, messageObject2, null, null, null, map, z, i, i2, 0, obj, sendAnimationData, z2);
        sendMessageParamsM1180of.replyToStoryItem = storyItem;
        sendMessageParamsM1180of.replyQuote = replyQuote;
        sendMessageParamsM1180of.quick_reply_shortcut = str2;
        sendMessageParamsM1180of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1180of.payStars = j2;
        sendMessageParamsM1180of.monoForumPeer = j3;
        sendMessageParamsM1180of.suggestionParams = messageSuggestionParams;
        sendMessageParamsM1180of.invert_media = z3;
        sendMessage(sendMessageParamsM1180of);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$6(final TLRPC.Document document, final VideoEditedInfo videoEditedInfo, final long j, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final int i2, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final String str, final int i3, final long j2, final long j3, final MessageSuggestionParams messageSuggestionParams, final CharSequence charSequence, final boolean z2) {
        String str2;
        final Bitmap[] bitmapArr = new Bitmap[1];
        String key = ImageLocation.getForDocument(document).getKey(null, null, false);
        if ("video/mp4".equals(document.mime_type)) {
            str2 = ".mp4";
        } else if ("video/x-matroska".equals(document.mime_type)) {
            str2 = ".mkv";
        } else {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        File file = new File(FileLoader.getDirectory(3), key + str2);
        if (!file.exists()) {
            file = new File(FileLoader.getDirectory(2), key + str2);
        }
        ensureMediaThumbExists(getAccountInstance(), false, document, file.getAbsolutePath(), null, 0L);
        final String[] strArr = {getKeyForPhotoSize(getAccountInstance(), FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320), bitmapArr, true, true)};
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendSticker$5(bitmapArr, strArr, document, videoEditedInfo, j, messageObject, messageObject2, z, i, i2, obj, sendAnimationData, storyItem, replyQuote, str, i3, j2, j3, messageSuggestionParams, charSequence, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$5(Bitmap[] bitmapArr, String[] strArr, TLRPC.Document document, VideoEditedInfo videoEditedInfo, long j, MessageObject messageObject, MessageObject messageObject2, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, String str, int i3, long j2, long j3, MessageSuggestionParams messageSuggestionParams, CharSequence charSequence, boolean z2) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        SendMessageParams sendMessageParamsM1180of = SendMessageParams.m1180of((TLRPC.TL_document) document, videoEditedInfo, null, j, messageObject, messageObject2, null, null, null, null, z, i, i2, 0, obj, sendAnimationData, false);
        sendMessageParamsM1180of.replyToStoryItem = storyItem;
        sendMessageParamsM1180of.replyQuote = replyQuote;
        sendMessageParamsM1180of.quick_reply_shortcut = str;
        sendMessageParamsM1180of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1180of.payStars = j2;
        sendMessageParamsM1180of.monoForumPeer = j3;
        sendMessageParamsM1180of.suggestionParams = messageSuggestionParams;
        sendMessageParamsM1180of.caption = charSequence != null ? charSequence.toString() : null;
        sendMessageParamsM1180of.invert_media = z2;
        sendMessage(sendMessageParamsM1180of);
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, long j2) {
        return sendMessage(arrayList, j, z, z2, z3, i, null, -1, j2);
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, MessageObject messageObject, int i2, long j2) {
        return sendMessage(arrayList, j, z, z2, z3, i, 0, messageObject, i2, j2, 0L, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x069b  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x06c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:306:0x06e8  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0704  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0731  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0754  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0775  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x079c  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x07f0  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0802  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0821  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0825  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x083d  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x083f  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0896  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0898  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x08a1  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0910  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0953  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0960  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0963  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x097a  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x097c  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x099e  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x09c0  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0b12 A[PHI: r0 r13 r21 r34 r36 r37 r38 r40 r41 r42 r43 r44 r45 r47 r48 r50
  0x0b12: PHI (r0v26 org.telegram.messenger.SendMessagesHelper) = 
  (r0v23 org.telegram.messenger.SendMessagesHelper)
  (r0v23 org.telegram.messenger.SendMessagesHelper)
  (r0v29 org.telegram.messenger.SendMessagesHelper)
 binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r13v4 int) = (r13v2 int), (r13v2 int), (r13v11 int) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r21v3 boolean) = (r21v2 boolean), (r21v2 boolean), (r21v6 boolean) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r34v3 androidx.collection.LongSparseArray) = 
  (r34v13 androidx.collection.LongSparseArray)
  (r34v14 androidx.collection.LongSparseArray)
  (r34v15 androidx.collection.LongSparseArray)
 binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r36v3 org.telegram.tgnet.TLRPC$InputPeer) = 
  (r36v2 org.telegram.tgnet.TLRPC$InputPeer)
  (r36v2 org.telegram.tgnet.TLRPC$InputPeer)
  (r36v9 org.telegram.tgnet.TLRPC$InputPeer)
 binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r37v3 org.telegram.tgnet.TLRPC$Chat) = (r37v2 org.telegram.tgnet.TLRPC$Chat), (r37v2 org.telegram.tgnet.TLRPC$Chat), (r37v13 org.telegram.tgnet.TLRPC$Chat) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r38v2 java.util.ArrayList) = (r38v1 java.util.ArrayList), (r38v1 java.util.ArrayList), (r38v7 java.util.ArrayList) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r40v4 java.util.ArrayList<org.telegram.messenger.MessageObject>) = 
  (r40v3 java.util.ArrayList<org.telegram.messenger.MessageObject>)
  (r40v3 java.util.ArrayList<org.telegram.messenger.MessageObject>)
  (r40v8 java.util.ArrayList<org.telegram.messenger.MessageObject>)
 binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r41v3 org.telegram.tgnet.TLRPC$Peer) = (r41v2 org.telegram.tgnet.TLRPC$Peer), (r41v2 org.telegram.tgnet.TLRPC$Peer), (r41v9 org.telegram.tgnet.TLRPC$Peer) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r42v1 java.lang.String) = (r42v0 java.lang.String), (r42v0 java.lang.String), (r42v6 java.lang.String) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r43v1 java.util.ArrayList) = (r43v0 java.util.ArrayList), (r43v0 java.util.ArrayList), (r43v6 java.util.ArrayList) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r44v1 boolean) = (r44v0 boolean), (r44v0 boolean), (r44v4 boolean) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r45v1 long) = (r45v0 long), (r45v0 long), (r45v6 long) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r47v1 androidx.collection.LongSparseArray) = 
  (r47v0 androidx.collection.LongSparseArray)
  (r47v0 androidx.collection.LongSparseArray)
  (r47v5 androidx.collection.LongSparseArray)
 binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r48v1 long) = (r48v0 long), (r48v0 long), (r48v5 long) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]
  0x0b12: PHI (r50v1 java.util.ArrayList) = (r50v0 java.util.ArrayList), (r50v0 java.util.ArrayList), (r50v4 java.util.ArrayList) binds: [B:458:0x0b1e, B:460:0x0b26, B:454:0x0ae7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34, types: [int] */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21, types: [int] */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r14v10, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r14v38 */
    /* JADX WARN: Type inference failed for: r14v39 */
    /* JADX WARN: Type inference failed for: r14v48 */
    /* JADX WARN: Type inference failed for: r14v49 */
    /* JADX WARN: Type inference failed for: r14v54 */
    /* JADX WARN: Type inference failed for: r14v55 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v57 */
    /* JADX WARN: Type inference failed for: r14v58 */
    /* JADX WARN: Type inference failed for: r1v103, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v113 */
    /* JADX WARN: Type inference failed for: r2v114 */
    /* JADX WARN: Type inference failed for: r2v115 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v11 */
    /* JADX WARN: Type inference failed for: r35v12 */
    /* JADX WARN: Type inference failed for: r35v2, types: [int] */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r48v18 */
    /* JADX WARN: Type inference failed for: r48v7 */
    /* JADX WARN: Type inference failed for: r48v8, types: [int] */
    /* JADX WARN: Type inference failed for: r48v9 */
    /* JADX WARN: Type inference failed for: r50v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int sendMessage(final ArrayList<MessageObject> arrayList, final long j, final boolean z, final boolean z2, final boolean z3, final int i, final int i2, final MessageObject messageObject, final int i3, long j2, final long j3, final MessageSuggestionParams messageSuggestionParams) {
        TLRPC.UserFull userFull;
        TLRPC.Chat chat;
        long j4;
        boolean z4;
        boolean z5;
        long j5;
        String adminRank;
        boolean zCanSendRoundVideo;
        boolean zCanSendVoice;
        boolean zCanSendMusic;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        String str;
        long j6;
        boolean z12;
        boolean z13;
        ArrayList arrayList2;
        TLRPC.Chat chat2;
        long j7;
        long j8;
        String str2;
        ArrayList arrayList3;
        final LongSparseArray longSparseArray;
        int i4;
        boolean z14;
        ArrayList arrayList4;
        final TLRPC.Peer peer;
        ArrayList<MessageObject> arrayList5;
        final SendMessagesHelper sendMessagesHelper;
        int i5;
        LongSparseArray longSparseArray2;
        LongSparseArray longSparseArray3;
        ArrayList arrayList6;
        ArrayList arrayList7;
        TLRPC.Chat chat3;
        LongSparseArray longSparseArray4;
        long j9;
        long j10;
        TLRPC.Chat chat4;
        long sendAsPeerId;
        boolean z15;
        TLRPC.Message message;
        int i6;
        int i7;
        TLRPC.TL_message tL_message;
        ArrayList<MessageObject> arrayList8;
        MessageObject messageObject2;
        TLRPC.InputPeer inputPeer;
        ArrayList arrayList9;
        TLRPC.Message message2;
        TLRPC.MessageReplyHeader messageReplyHeader;
        TLRPC.Peer peer2;
        TLRPC.MessageReplyHeader messageReplyHeader2;
        long j11;
        int i8;
        ?? r48;
        boolean z16;
        boolean z17;
        TLRPC.User user;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer3;
        ?? r14;
        ?? r35;
        char c;
        final long j12 = j;
        if (arrayList == null || arrayList.isEmpty()) {
            return 0;
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (!DialogObject.isEncryptedDialog(j12)) {
            TLRPC.Peer peer4 = getMessagesController().getPeer(j12);
            long sendPaidMessagesStars = getMessagesController().getSendPaidMessagesStars(j12);
            if (sendPaidMessagesStars <= 0) {
                sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(getMessagesController().isUserContactBlocked(j12));
            }
            if (sendPaidMessagesStars != j2) {
                AlertsCreator.ensurePaidMessageConfirmation(this.currentAccount, j12, Math.max(1, arrayList.size()), new Utilities.Callback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$sendMessage$7(arrayList, j12, z, z2, z3, i, i2, messageObject, i3, j3, messageSuggestionParams, (Long) obj);
                    }
                });
                return 0;
            }
            ArrayList<MessageObject> arrayList10 = arrayList;
            boolean z18 = false;
            boolean z19 = true;
            if (DialogObject.isUserDialog(j12)) {
                if (getMessagesController().getUser(Long.valueOf(j12)) == null) {
                    return 0;
                }
                boolean z20 = getMessagesController().getUserFull(j12) != null ? !r2.voice_messages_forbidden : true;
                zCanSendVoice = z20;
                zCanSendRoundVideo = z20;
                j6 = 0;
                z13 = false;
                z10 = false;
                z11 = true;
                z12 = true;
                z9 = true;
                z8 = true;
                z7 = true;
                z6 = true;
                zCanSendMusic = true;
                chat = null;
                str = null;
            } else {
                chat = getMessagesController().getChat(Long.valueOf(-j12));
                if (ChatObject.isChannel(chat)) {
                    boolean z21 = chat.signatures;
                    boolean z22 = chat.megagroup;
                    z4 = !z22;
                    if (z22 || !chat.has_link) {
                        z5 = z21;
                    } else {
                        z5 = z21;
                        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(chat.f1660id);
                        if (chatFull != null) {
                            j4 = chatFull.linked_chat_id;
                        }
                    }
                    j4 = 0;
                } else {
                    j4 = 0;
                    z4 = false;
                    z5 = false;
                }
                if (chat != null) {
                    j5 = j4;
                    adminRank = getMessagesController().getAdminRank(chat.f1660id, clientUserId);
                } else {
                    j5 = j4;
                    adminRank = null;
                }
                boolean zCanSendStickers = ChatObject.canSendStickers(chat);
                boolean zCanSendPhoto = ChatObject.canSendPhoto(chat);
                boolean zCanSendVideo = ChatObject.canSendVideo(chat);
                boolean zCanSendDocument = ChatObject.canSendDocument(chat);
                boolean zCanSendEmbed = ChatObject.canSendEmbed(chat);
                boolean zCanSendPolls = ChatObject.canSendPolls(chat);
                zCanSendRoundVideo = ChatObject.canSendRoundVideo(chat);
                zCanSendVoice = ChatObject.canSendVoice(chat);
                zCanSendMusic = ChatObject.canSendMusic(chat);
                z6 = zCanSendPolls;
                z7 = zCanSendEmbed;
                z8 = zCanSendDocument;
                z9 = zCanSendVideo;
                z10 = z5;
                z11 = zCanSendStickers;
                str = adminRank;
                j6 = j5;
                z12 = zCanSendPhoto;
                z13 = z4;
            }
            LongSparseArray longSparseArray5 = new LongSparseArray();
            ArrayList<MessageObject> arrayList11 = new ArrayList<>();
            ArrayList arrayList12 = new ArrayList();
            ArrayList arrayList13 = new ArrayList();
            ArrayList arrayList14 = new ArrayList();
            LongSparseArray longSparseArray6 = new LongSparseArray();
            TLRPC.InputPeer inputPeer2 = getMessagesController().getInputPeer(j12);
            boolean z23 = j12 == clientUserId;
            int i9 = 0;
            ArrayList arrayList15 = arrayList12;
            ArrayList arrayList16 = arrayList13;
            ArrayList arrayList17 = arrayList14;
            LongSparseArray longSparseArray7 = longSparseArray6;
            TLRPC.InputPeer inputPeer3 = inputPeer2;
            ?? r352 = 0;
            LongSparseArray longSparseArray8 = longSparseArray5;
            while (i9 < arrayList10.size()) {
                final MessageObject messageObject3 = arrayList10.get(i9);
                if (messageObject3.getId() <= 0 || messageObject3.needDrawBluredPreview()) {
                    arrayList2 = arrayList17;
                    chat2 = chat;
                    j7 = clientUserId;
                    j8 = j6;
                    str2 = str;
                    arrayList3 = arrayList16;
                    longSparseArray = longSparseArray7;
                    i4 = i9;
                    z14 = z23;
                    arrayList4 = arrayList15;
                    peer = peer4;
                    arrayList5 = arrayList11;
                    sendMessagesHelper = this;
                    LongSparseArray longSparseArray9 = longSparseArray8;
                    longSparseArray2 = longSparseArray9;
                    if (messageObject3.type == 0) {
                        longSparseArray2 = longSparseArray9;
                        if (TextUtils.isEmpty(messageObject3.messageText)) {
                            i5 = i4;
                            longSparseArray3 = longSparseArray2;
                        } else {
                            TLRPC.MessageMedia messageMedia = messageObject3.messageOwner.media;
                            TLRPC.WebPage webPage = messageMedia != null ? messageMedia.webpage : null;
                            i5 = i4;
                            SendMessageParams sendMessageParamsM1175of = SendMessageParams.m1175of(messageObject3.messageText.toString(), j, null, messageObject, webPage, webPage != null ? z19 : false, messageObject3.messageOwner.entities, null, null, z3, i, i2, null, false);
                            sendMessageParamsM1175of.suggestionParams = messageSuggestionParams;
                            sendMessageParamsM1175of.monoForumPeer = j3;
                            sendMessageParamsM1175of.quick_reply_shortcut = messageObject3.getQuickReplyName();
                            sendMessageParamsM1175of.quick_reply_shortcut_id = messageObject3.getQuickReplyId();
                            sendMessagesHelper.sendMessage(sendMessageParamsM1175of);
                            longSparseArray3 = longSparseArray9;
                        }
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    }
                } else {
                    boolean z24 = (messageObject3.isSticker() || messageObject3.isAnimatedSticker() || messageObject3.isGif() || messageObject3.isGame()) ? z19 : z18;
                    int i10 = i9;
                    if (!z11 && z24) {
                        if (r352 == 0) {
                            r14 = ChatObject.isActionBannedByDefault(chat, 8) ? 4 : z19;
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            r35 = r14;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    } else if (!z12 && (messageObject3.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) && !messageObject3.isVideo() && !z24) {
                        if (r352 == 0) {
                            r14 = ChatObject.isActionBannedByDefault(chat, 16) ? 10 : 12;
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            r35 = r14;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    } else if (!zCanSendMusic && messageObject3.isMusic()) {
                        if (r352 == 0) {
                            r14 = ChatObject.isActionBannedByDefault(chat, 18) ? 19 : 20;
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            r35 = r14;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    } else if (!z9 && (messageObject3.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) && messageObject3.isVideo() && !z24) {
                        if (r352 == 0) {
                            c = ChatObject.isActionBannedByDefault(chat, 17) ? '\t' : (char) 11;
                            r35 = c;
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    } else if (!z6 && (messageObject3.messageOwner.media instanceof TLRPC.TL_messageMediaPoll)) {
                        if (r352 == 0) {
                            c = ChatObject.isActionBannedByDefault(chat, 10) ? (char) 6 : (char) 3;
                            r35 = c;
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    } else if (z6 || !(messageObject3.messageOwner.media instanceof TLRPC.TL_messageMediaToDo)) {
                        if (zCanSendVoice || !MessageObject.isVoiceMessage(messageObject3.messageOwner)) {
                            if (zCanSendRoundVideo || !MessageObject.isRoundVideoMessage(messageObject3.messageOwner)) {
                                if (z8 || !(messageObject3.messageOwner.media instanceof TLRPC.TL_messageMediaDocument) || z24) {
                                    TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
                                    if (z) {
                                        arrayList7 = arrayList17;
                                        chat3 = chat;
                                        longSparseArray4 = longSparseArray7;
                                    } else {
                                        if (messageObject3.getDialogId() == clientUserId && messageObject3.isFromUser()) {
                                            arrayList7 = arrayList17;
                                            chat3 = chat;
                                            if (messageObject3.messageOwner.from_id.user_id == clientUserId) {
                                                z17 = z19;
                                            }
                                            if (messageObject3.isForwarded()) {
                                                if (!z17) {
                                                    long fromChatId = messageObject3.getFromChatId();
                                                    TLRPC.TL_messageFwdHeader tL_messageFwdHeader = new TLRPC.TL_messageFwdHeader();
                                                    tL_message2.fwd_from = tL_messageFwdHeader;
                                                    tL_messageFwdHeader.channel_post = messageObject3.getId();
                                                    tL_message2.fwd_from.flags |= 4;
                                                    if (messageObject3.isFromUser()) {
                                                        TLRPC.MessageFwdHeader messageFwdHeader2 = tL_message2.fwd_from;
                                                        messageFwdHeader2.from_id = messageObject3.messageOwner.from_id;
                                                        messageFwdHeader2.flags |= 1;
                                                        longSparseArray4 = longSparseArray7;
                                                    } else {
                                                        tL_message2.fwd_from.from_id = new TLRPC.TL_peerChannel();
                                                        TLRPC.MessageFwdHeader messageFwdHeader3 = tL_message2.fwd_from;
                                                        TLRPC.Peer peer5 = messageFwdHeader3.from_id;
                                                        TLRPC.Message message3 = messageObject3.messageOwner;
                                                        longSparseArray4 = longSparseArray7;
                                                        TLRPC.Peer peer6 = message3.peer_id;
                                                        peer5.channel_id = peer6.channel_id;
                                                        messageFwdHeader3.flags |= 1;
                                                        if (message3.post && fromChatId > 0) {
                                                            TLRPC.Peer peer7 = message3.from_id;
                                                            if (peer7 != null) {
                                                                peer6 = peer7;
                                                            }
                                                            messageFwdHeader3.from_id = peer6;
                                                        }
                                                    }
                                                    if (messageObject3.messageOwner.post_author == null && !messageObject3.isOutOwner() && fromChatId > 0 && messageObject3.messageOwner.post && (user = getMessagesController().getUser(Long.valueOf(fromChatId))) != null) {
                                                        tL_message2.fwd_from.post_author = ContactsController.formatName(user.first_name, user.last_name);
                                                        tL_message2.fwd_from.flags |= 8;
                                                    }
                                                    tL_message2.date = messageObject3.messageOwner.date;
                                                    tL_message2.flags = 4;
                                                }
                                                if (j12 == clientUserId && (messageFwdHeader = tL_message2.fwd_from) != null) {
                                                    messageFwdHeader.flags |= 16;
                                                    messageFwdHeader.saved_from_msg_id = messageObject3.getId();
                                                    TLRPC.MessageFwdHeader messageFwdHeader4 = tL_message2.fwd_from;
                                                    peer3 = messageObject3.messageOwner.peer_id;
                                                    messageFwdHeader4.saved_from_peer = peer3;
                                                    if (peer3.user_id == clientUserId) {
                                                        peer3.user_id = messageObject3.getDialogId();
                                                    }
                                                }
                                            } else {
                                                TLRPC.TL_messageFwdHeader tL_messageFwdHeader2 = new TLRPC.TL_messageFwdHeader();
                                                tL_message2.fwd_from = tL_messageFwdHeader2;
                                                TLRPC.MessageFwdHeader messageFwdHeader5 = messageObject3.messageOwner.fwd_from;
                                                if ((messageFwdHeader5.flags & 1) != 0) {
                                                    tL_messageFwdHeader2.flags |= 1;
                                                    tL_messageFwdHeader2.from_id = messageFwdHeader5.from_id;
                                                }
                                                if ((messageFwdHeader5.flags & 32) != 0) {
                                                    tL_messageFwdHeader2.flags |= 32;
                                                    tL_messageFwdHeader2.from_name = messageFwdHeader5.from_name;
                                                }
                                                if ((messageFwdHeader5.flags & 4) != 0) {
                                                    tL_messageFwdHeader2.flags |= 4;
                                                    tL_messageFwdHeader2.channel_post = messageFwdHeader5.channel_post;
                                                }
                                                if ((messageFwdHeader5.flags & 8) != 0) {
                                                    tL_messageFwdHeader2.flags |= 8;
                                                    tL_messageFwdHeader2.post_author = messageFwdHeader5.post_author;
                                                }
                                                if ((j12 == clientUserId || z13) && (messageFwdHeader5.flags & 16) != 0 && !UserObject.isReplyUser(messageObject3.getDialogId())) {
                                                    TLRPC.MessageFwdHeader messageFwdHeader6 = tL_message2.fwd_from;
                                                    messageFwdHeader6.flags |= 16;
                                                    TLRPC.MessageFwdHeader messageFwdHeader7 = messageObject3.messageOwner.fwd_from;
                                                    messageFwdHeader6.saved_from_peer = messageFwdHeader7.saved_from_peer;
                                                    messageFwdHeader6.saved_from_msg_id = messageFwdHeader7.saved_from_msg_id;
                                                }
                                                tL_message2.fwd_from.date = messageObject3.messageOwner.fwd_from.date;
                                                tL_message2.flags = 4;
                                            }
                                            longSparseArray4 = longSparseArray7;
                                            if (j12 == clientUserId) {
                                                messageFwdHeader.flags |= 16;
                                                messageFwdHeader.saved_from_msg_id = messageObject3.getId();
                                                TLRPC.MessageFwdHeader messageFwdHeader42 = tL_message2.fwd_from;
                                                peer3 = messageObject3.messageOwner.peer_id;
                                                messageFwdHeader42.saved_from_peer = peer3;
                                                if (peer3.user_id == clientUserId) {
                                                }
                                            }
                                        } else {
                                            arrayList7 = arrayList17;
                                            chat3 = chat;
                                        }
                                        z17 = z18;
                                        if (messageObject3.isForwarded()) {
                                        }
                                        longSparseArray4 = longSparseArray7;
                                        if (j12 == clientUserId) {
                                        }
                                    }
                                    HashMap map = new HashMap();
                                    tL_message2.params = map;
                                    map.put("fwd_id", _UrlKt.FRAGMENT_ENCODE_SET + messageObject3.getId());
                                    HashMap map2 = tL_message2.params;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(_UrlKt.FRAGMENT_ENCODE_SET);
                                    long j13 = clientUserId;
                                    sb.append(messageObject3.getDialogId());
                                    map2.put("fwd_peer", sb.toString());
                                    if (!messageObject3.messageOwner.restriction_reason.isEmpty()) {
                                        tL_message2.restriction_reason = messageObject3.messageOwner.restriction_reason;
                                        tL_message2.flags |= 4194304;
                                    }
                                    if (!z7 && (messageObject3.messageOwner.media instanceof TLRPC.TL_messageMediaWebPage)) {
                                        tL_message2.media = new TLRPC.TL_messageMediaEmpty();
                                    } else {
                                        tL_message2.media = messageObject3.messageOwner.media;
                                    }
                                    TLRPC.Message message4 = messageObject3.messageOwner;
                                    tL_message2.invert_media = message4.invert_media;
                                    if (tL_message2.media != null) {
                                        tL_message2.flags |= 512;
                                    }
                                    long j14 = message4.via_bot_id;
                                    if (j14 != 0) {
                                        tL_message2.via_bot_id = j14;
                                        tL_message2.flags |= 2048;
                                    }
                                    if (j6 != 0) {
                                        TLRPC.TL_messageReplies tL_messageReplies = new TLRPC.TL_messageReplies();
                                        tL_message2.replies = tL_messageReplies;
                                        boolean z25 = z19;
                                        tL_messageReplies.comments = z25;
                                        tL_messageReplies.channel_id = j6;
                                        tL_messageReplies.flags |= z25 ? 1 : 0;
                                        tL_message2.flags |= 8388608;
                                    }
                                    if (!z2 || tL_message2.media == null) {
                                        tL_message2.message = messageObject3.messageOwner.message;
                                    }
                                    if (tL_message2.message == null) {
                                        tL_message2.message = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    tL_message2.fwd_msg_id = messageObject3.getId();
                                    TLRPC.Message message5 = messageObject3.messageOwner;
                                    tL_message2.attachPath = message5.attachPath;
                                    tL_message2.entities = message5.entities;
                                    if (message5.reply_markup instanceof TLRPC.TL_replyInlineMarkup) {
                                        tL_message2.reply_markup = new TLRPC.TL_replyInlineMarkup();
                                        int size = messageObject3.messageOwner.reply_markup.rows.size();
                                        boolean z26 = z18;
                                        boolean z27 = z26;
                                        ?? r2 = z26;
                                        while (true) {
                                            if (r2 >= size) {
                                                boolean z28 = z27 ? 1 : 0;
                                                break;
                                            }
                                            TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow = (TLRPC.TL_keyboardButtonRow) messageObject3.messageOwner.reply_markup.rows.get(r2 == true ? 1 : 0);
                                            int size2 = tL_keyboardButtonRow.buttons.size();
                                            ?? r13 = z18;
                                            TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow2 = null;
                                            ?? r22 = r2;
                                            boolean z29 = z27;
                                            while (true) {
                                                i8 = size;
                                                if (r13 >= size2) {
                                                    r48 = r22;
                                                    boolean z30 = z29 ? 1 : 0;
                                                    z27 = z29;
                                                    break;
                                                }
                                                TLRPC.KeyboardButton keyboardButton = (TLRPC.KeyboardButton) tL_keyboardButtonRow.buttons.get(r13);
                                                ?? r482 = r22;
                                                boolean z31 = keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth;
                                                if (!z31 && !(keyboardButton instanceof TLRPC.TL_keyboardButtonUrl) && !(keyboardButton instanceof TLRPC.TL_keyboardButtonSwitchInline) && !(keyboardButton instanceof TLRPC.TL_keyboardButtonBuy)) {
                                                    z27 = true;
                                                    r48 = r482;
                                                    break;
                                                }
                                                if (z31) {
                                                    TLRPC.TL_keyboardButtonUrlAuth tL_keyboardButtonUrlAuth = new TLRPC.TL_keyboardButtonUrlAuth();
                                                    z16 = z29 ? 1 : 0;
                                                    tL_keyboardButtonUrlAuth.flags = keyboardButton.flags;
                                                    String str3 = keyboardButton.fwd_text;
                                                    if (str3 != null) {
                                                        tL_keyboardButtonUrlAuth.fwd_text = str3;
                                                        tL_keyboardButtonUrlAuth.text = str3;
                                                    } else {
                                                        tL_keyboardButtonUrlAuth.text = keyboardButton.text;
                                                    }
                                                    tL_keyboardButtonUrlAuth.url = keyboardButton.url;
                                                    tL_keyboardButtonUrlAuth.button_id = keyboardButton.button_id;
                                                    keyboardButton = tL_keyboardButtonUrlAuth;
                                                } else {
                                                    z16 = z29 ? 1 : 0;
                                                }
                                                if (tL_keyboardButtonRow2 == null) {
                                                    tL_keyboardButtonRow2 = new TLRPC.TL_keyboardButtonRow();
                                                    tL_message2.reply_markup.rows.add(tL_keyboardButtonRow2);
                                                }
                                                tL_keyboardButtonRow2.buttons.add(keyboardButton);
                                                size = i8;
                                                r22 = r482 == true ? 1 : 0;
                                                z29 = z16;
                                                r13++;
                                            }
                                            if (z27) {
                                                break;
                                            }
                                            size = i8;
                                            r2 = r48 + 1;
                                            z27 = z27;
                                        }
                                        if (z27) {
                                            messageObject3.messageOwner.reply_markup = null;
                                            tL_message2.flags &= -65;
                                            if (!tL_message2.entities.isEmpty()) {
                                            }
                                            if (tL_message2.attachPath == null) {
                                            }
                                            int newMessageId = getUserConfig().getNewMessageId();
                                            tL_message2.f1686id = newMessageId;
                                            tL_message2.local_id = newMessageId;
                                            tL_message2.out = true;
                                            j9 = messageObject3.messageOwner.grouped_id;
                                            if (j9 != 0) {
                                            }
                                            if (peer4.channel_id != 0) {
                                                j7 = j13;
                                                j8 = j6;
                                                j10 = j;
                                                chat4 = chat3;
                                                sendAsPeerId = ChatObject.getSendAsPeerId(chat4, getMessagesController().getChatFull(-j10), true);
                                                if (sendAsPeerId != j7) {
                                                }
                                                if (tL_message2.random_id == 0) {
                                                }
                                                arrayList16.add(Long.valueOf(tL_message2.random_id));
                                                LongSparseArray longSparseArray10 = longSparseArray4;
                                                longSparseArray10.put(tL_message2.random_id, tL_message2);
                                                ArrayList arrayList18 = arrayList7;
                                                arrayList18.add(Integer.valueOf(tL_message2.fwd_msg_id));
                                                tL_message2.date = i == 0 ? i : getConnectionsManager().getCurrentTime();
                                                TLRPC.InputPeer inputPeer4 = inputPeer3;
                                                z15 = inputPeer4 instanceof TLRPC.TL_inputPeerChannel;
                                                if (z15) {
                                                    message = messageObject3.messageOwner;
                                                    if ((message.flags & 1024) != 0) {
                                                        tL_message2.views = message.views;
                                                        tL_message2.flags |= 1024;
                                                    }
                                                    tL_message2.unread = true;
                                                    tL_message2.dialog_id = j10;
                                                    tL_message2.peer_id = peer4;
                                                    if (!MessageObject.isVoiceMessage(tL_message2)) {
                                                        if (!z15) {
                                                            tL_message2.media_unread = true;
                                                            if (messageObject == null) {
                                                                peer2 = messageReplyHeader.reply_to_peer_id;
                                                                if (peer2 != null) {
                                                                    messageReplyHeader2 = messageObject3.messageOwner.reply_to;
                                                                    if ((messageReplyHeader2.flags & 16) != 0) {
                                                                        tL_message2.flags |= 8;
                                                                        tL_message2.reply_to = messageObject3.messageOwner.reply_to;
                                                                    }
                                                                }
                                                            }
                                                            i6 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                                                            if (i6 <= 0) {
                                                            }
                                                            if (j3 == 0) {
                                                            }
                                                            if (messageSuggestionParams != null) {
                                                            }
                                                            int i11 = i7;
                                                            longSparseArray = longSparseArray10;
                                                            str2 = str;
                                                            MessageObject messageObject4 = new MessageObject(this.currentAccount, tL_message, true, true);
                                                            messageObject4.scheduled = i == 0 ? true : z18;
                                                            messageObject4.messageOwner.send_state = 1;
                                                            messageObject4.wasJustSent = true;
                                                            ArrayList<MessageObject> arrayList19 = arrayList11;
                                                            arrayList19.add(messageObject4);
                                                            ArrayList arrayList20 = arrayList15;
                                                            arrayList20.add(tL_message);
                                                            longSparseArray3 = longSparseArray8;
                                                            StarsController.getInstance(this.currentAccount).beforeSendingMessage(messageObject4);
                                                            peer = peer4;
                                                            if (messageObject3.replyMessageObject == null) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            tL_message2.flags |= 64;
                                            if (!tL_message2.entities.isEmpty()) {
                                                tL_message2.flags |= 128;
                                            }
                                            if (tL_message2.attachPath == null) {
                                                tL_message2.attachPath = _UrlKt.FRAGMENT_ENCODE_SET;
                                            }
                                            int newMessageId2 = getUserConfig().getNewMessageId();
                                            tL_message2.f1686id = newMessageId2;
                                            tL_message2.local_id = newMessageId2;
                                            tL_message2.out = true;
                                            j9 = messageObject3.messageOwner.grouped_id;
                                            if (j9 != 0) {
                                                Long lValueOf = (Long) longSparseArray8.get(j9);
                                                if (lValueOf == null) {
                                                    lValueOf = Long.valueOf(Utilities.random.nextLong());
                                                    longSparseArray8.put(messageObject3.messageOwner.grouped_id, lValueOf);
                                                }
                                                tL_message2.grouped_id = lValueOf.longValue();
                                                tL_message2.flags |= 131072;
                                            }
                                            if (peer4.channel_id != 0 && z13) {
                                                if (z10) {
                                                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                                                    tL_message2.from_id = tL_peerUser;
                                                    j11 = j13;
                                                    tL_peerUser.user_id = j11;
                                                } else {
                                                    j11 = j13;
                                                    tL_message2.from_id = peer4;
                                                }
                                                tL_message2.post = true;
                                                j7 = j11;
                                                j8 = j6;
                                                chat4 = chat3;
                                                j10 = j;
                                            } else {
                                                j7 = j13;
                                                j8 = j6;
                                                j10 = j;
                                                chat4 = chat3;
                                                sendAsPeerId = ChatObject.getSendAsPeerId(chat4, getMessagesController().getChatFull(-j10), true);
                                                if (sendAsPeerId != j7) {
                                                    TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                                                    tL_message2.from_id = tL_peerUser2;
                                                    tL_peerUser2.user_id = j7;
                                                    tL_message2.flags |= 256;
                                                } else {
                                                    tL_message2.from_id = getMessagesController().getPeer(sendAsPeerId);
                                                    if (str != null) {
                                                        tL_message2.post_author = str;
                                                        tL_message2.flags |= 65536;
                                                    }
                                                }
                                            }
                                            if (tL_message2.random_id == 0) {
                                                tL_message2.random_id = getNextRandomId();
                                            }
                                            arrayList16.add(Long.valueOf(tL_message2.random_id));
                                            LongSparseArray longSparseArray102 = longSparseArray4;
                                            longSparseArray102.put(tL_message2.random_id, tL_message2);
                                            ArrayList arrayList182 = arrayList7;
                                            arrayList182.add(Integer.valueOf(tL_message2.fwd_msg_id));
                                            tL_message2.date = i == 0 ? i : getConnectionsManager().getCurrentTime();
                                            TLRPC.InputPeer inputPeer42 = inputPeer3;
                                            z15 = inputPeer42 instanceof TLRPC.TL_inputPeerChannel;
                                            if (z15 || !z13) {
                                                message = messageObject3.messageOwner;
                                                if ((message.flags & 1024) != 0 && i == 0) {
                                                    tL_message2.views = message.views;
                                                    tL_message2.flags |= 1024;
                                                }
                                                tL_message2.unread = true;
                                            } else if (i == 0) {
                                                tL_message2.views = 1;
                                                tL_message2.flags |= 1024;
                                            }
                                            tL_message2.dialog_id = j10;
                                            tL_message2.peer_id = peer4;
                                            if (!MessageObject.isVoiceMessage(tL_message2) || MessageObject.isRoundVideoMessage(tL_message2)) {
                                                if (!z15 && messageObject3.getChannelId() != 0) {
                                                    tL_message2.media_unread = messageObject3.isContentUnread();
                                                } else {
                                                    tL_message2.media_unread = true;
                                                }
                                            }
                                            if (messageObject == null && messageSuggestionParams == null && (messageReplyHeader = (message2 = messageObject3.messageOwner).reply_to) != null) {
                                                peer2 = messageReplyHeader.reply_to_peer_id;
                                                if (peer2 != null || MessageObject.peersEqual(peer2, message2.peer_id)) {
                                                    messageReplyHeader2 = messageObject3.messageOwner.reply_to;
                                                    if ((messageReplyHeader2.flags & 16) != 0 && arrayList182.contains(Integer.valueOf(messageReplyHeader2.reply_to_msg_id))) {
                                                        tL_message2.flags |= 8;
                                                        tL_message2.reply_to = messageObject3.messageOwner.reply_to;
                                                    }
                                                }
                                            }
                                            i6 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                                            if (i6 <= 0) {
                                                tL_message2.flags2 |= 64;
                                                chat2 = chat4;
                                                i7 = i6;
                                                tL_message2.paid_message_stars = j2;
                                            } else {
                                                chat2 = chat4;
                                                i7 = i6;
                                            }
                                            if (j3 == 0) {
                                                tL_message = tL_message2;
                                                tL_message.saved_peer_id = getMessagesController().getPeer(j3);
                                                tL_message.flags |= 268435456;
                                            } else {
                                                tL_message = tL_message2;
                                            }
                                            if (messageSuggestionParams != null) {
                                                tL_message.suggested_post = messageSuggestionParams.toTl();
                                            }
                                            int i112 = i7;
                                            longSparseArray = longSparseArray102;
                                            str2 = str;
                                            MessageObject messageObject42 = new MessageObject(this.currentAccount, tL_message, true, true);
                                            messageObject42.scheduled = i == 0 ? true : z18;
                                            messageObject42.messageOwner.send_state = 1;
                                            messageObject42.wasJustSent = true;
                                            ArrayList<MessageObject> arrayList192 = arrayList11;
                                            arrayList192.add(messageObject42);
                                            ArrayList arrayList202 = arrayList15;
                                            arrayList202.add(tL_message);
                                            longSparseArray3 = longSparseArray8;
                                            StarsController.getInstance(this.currentAccount).beforeSendingMessage(messageObject42);
                                            peer = peer4;
                                            if (messageObject3.replyMessageObject == null) {
                                                ?? r10 = z18;
                                                while (r10 < arrayList.size()) {
                                                    arrayList8 = arrayList;
                                                    ?? r50 = r10;
                                                    if (arrayList8.get(r10).getId() == messageObject3.replyMessageObject.getId()) {
                                                        TLRPC.Message message6 = messageObject42.messageOwner;
                                                        MessageObject messageObject5 = messageObject3.replyMessageObject;
                                                        message6.replyMessage = messageObject5.messageOwner;
                                                        messageObject42.replyMessageObject = messageObject5;
                                                        break;
                                                    }
                                                    r10 = (r50 == true ? 1 : 0) + 1;
                                                }
                                                arrayList8 = arrayList;
                                                putToSendingMessages(tL_message, i == 0 ? true : z18);
                                                if (BuildVars.LOGS_ENABLED) {
                                                    FileLog.m1133d("forward message user_id = " + inputPeer42.user_id + " chat_id = " + inputPeer42.chat_id + " channel_id = " + inputPeer42.channel_id + " access_hash = " + inputPeer42.access_hash);
                                                }
                                                if (messageObject == null && messageSuggestionParams == null) {
                                                    TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
                                                    tL_message.reply_to = tL_messageReplyHeader;
                                                    tL_messageReplyHeader.flags |= 16;
                                                    tL_messageReplyHeader.reply_to_msg_id = messageObject.getId();
                                                    messageObject2 = messageObject;
                                                    if (messageObject2.isTopicMainMessage) {
                                                        TLRPC.MessageReplyHeader messageReplyHeader3 = tL_message.reply_to;
                                                        messageReplyHeader3.forum_topic = true;
                                                        messageReplyHeader3.flags |= 8;
                                                    }
                                                    if (arrayList202.size() != 100) {
                                                        i4 = i10;
                                                        if (i4 != arrayList8.size() - 1 && (i4 == arrayList8.size() - 1 || arrayList8.get(i4 + 1).getDialogId() == messageObject3.getDialogId())) {
                                                            inputPeer3 = inputPeer42;
                                                            arrayList2 = arrayList182;
                                                            arrayList4 = arrayList202;
                                                            arrayList3 = arrayList16;
                                                            i5 = i4;
                                                            z14 = z23;
                                                            z19 = true;
                                                            arrayList5 = arrayList192;
                                                            longSparseArray3 = longSparseArray3;
                                                            arrayList16 = arrayList3;
                                                            arrayList17 = arrayList2;
                                                            longSparseArray7 = longSparseArray;
                                                            arrayList6 = arrayList4;
                                                        }
                                                    } else {
                                                        i4 = i10;
                                                    }
                                                    getMessagesStorage().putMessages(new ArrayList<>(arrayList202), false, true, false, 0, i != 0 ? 1 : z18, 0L);
                                                    getMessagesController().updateInterfaceWithMessages(j10, arrayList192, i != 0 ? 1 : z18);
                                                    int i12 = z18;
                                                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[i12]);
                                                    getUserConfig().saveConfig(i12);
                                                    final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages = new TLRPC.TL_messages_forwardMessages();
                                                    tL_messages_forwardMessages.to_peer = inputPeer42;
                                                    if (z3) {
                                                        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append(NotificationsSettingsFacade.PROPERTY_SILENT);
                                                        sb2.append(j10);
                                                        boolean z32 = notificationsSettings.getBoolean(sb2.toString(), false);
                                                        tL_messages_forwardMessages.silent = z32;
                                                        if (messageObject2 != null) {
                                                            tL_messages_forwardMessages.top_msg_id = messageObject2.getId();
                                                            tL_messages_forwardMessages.flags |= 512;
                                                        }
                                                        if (i != 0) {
                                                            tL_messages_forwardMessages.schedule_date = i;
                                                            int i13 = tL_messages_forwardMessages.flags;
                                                            tL_messages_forwardMessages.flags = i13 | 1024;
                                                            if (i2 != 0) {
                                                                tL_messages_forwardMessages.schedule_repeat_period = i2;
                                                                tL_messages_forwardMessages.flags = i13 | 16778240;
                                                            }
                                                        }
                                                        if (messageObject3.messageOwner.peer_id instanceof TLRPC.TL_peerChannel) {
                                                            inputPeer = inputPeer42;
                                                            TLRPC.Chat chat5 = getMessagesController().getChat(Long.valueOf(messageObject3.messageOwner.peer_id.channel_id));
                                                            TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
                                                            tL_messages_forwardMessages.from_peer = tL_inputPeerChannel;
                                                            arrayList9 = arrayList202;
                                                            tL_inputPeerChannel.channel_id = messageObject3.messageOwner.peer_id.channel_id;
                                                            if (chat5 != null) {
                                                                tL_inputPeerChannel.access_hash = chat5.access_hash;
                                                            }
                                                        } else {
                                                            inputPeer = inputPeer42;
                                                            arrayList9 = arrayList202;
                                                            tL_messages_forwardMessages.from_peer = new TLRPC.TL_inputPeerEmpty();
                                                        }
                                                        tL_messages_forwardMessages.random_id = arrayList16;
                                                        tL_messages_forwardMessages.f1755id = arrayList182;
                                                        tL_messages_forwardMessages.drop_author = z;
                                                        tL_messages_forwardMessages.drop_media_captions = z2;
                                                        tL_messages_forwardMessages.with_my_score = arrayList8.size() == 1 && arrayList8.get(0).messageOwner.with_my_score;
                                                        if (i3 >= 0) {
                                                            tL_messages_forwardMessages.flags |= 1048576;
                                                            tL_messages_forwardMessages.video_timestamp = i3;
                                                        }
                                                        if (i112 > 0) {
                                                            tL_messages_forwardMessages.flags |= TLObject.FLAG_21;
                                                            arrayList2 = arrayList182;
                                                            tL_messages_forwardMessages.allow_paid_stars = ((long) tL_messages_forwardMessages.f1755id.size()) * j2;
                                                        } else {
                                                            arrayList2 = arrayList182;
                                                        }
                                                        if (messageSuggestionParams != null) {
                                                            tL_messages_forwardMessages.suggested_post = messageSuggestionParams.toTl();
                                                            if (messageObject != null) {
                                                                TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
                                                                tL_messages_forwardMessages.reply_to = tL_inputReplyToMessage;
                                                                tL_inputReplyToMessage.reply_to_msg_id = messageObject.getId();
                                                            }
                                                        }
                                                        applyMonoForumPeerId(tL_messages_forwardMessages, j3);
                                                        final ArrayList arrayList21 = new ArrayList(arrayList192);
                                                        final boolean z33 = i == 2147483646;
                                                        TLRPC.InputPeer inputPeer5 = inputPeer;
                                                        arrayList3 = arrayList16;
                                                        inputPeer3 = inputPeer5;
                                                        final ArrayList arrayList22 = arrayList9;
                                                        final boolean z34 = z23;
                                                        z19 = true;
                                                        arrayList5 = arrayList192;
                                                        final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda8
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                this.f$0.lambda$sendMessage$17(tL_messages_forwardMessages, j, i, z33, z34, longSparseArray, arrayList22, arrayList21, messageObject3, peer);
                                                            }
                                                        };
                                                        sendMessagesHelper = this;
                                                        z14 = z34;
                                                        arrayList4 = arrayList22;
                                                        peer = peer;
                                                        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda9
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                this.f$0.lambda$sendMessage$18(tL_messages_forwardMessages, arrayList21, runnable);
                                                            }
                                                        };
                                                        if (StarsController.getInstance(sendMessagesHelper.currentAccount).beforeSendingFinalRequest(tL_messages_forwardMessages, arrayList21, runnable2)) {
                                                            runnable2.run();
                                                        }
                                                        longSparseArray2 = longSparseArray3;
                                                        if (i4 != arrayList.size() - 1) {
                                                            ArrayList<MessageObject> arrayList23 = new ArrayList<>();
                                                            arrayList6 = new ArrayList();
                                                            arrayList5 = arrayList23;
                                                            arrayList16 = new ArrayList();
                                                            arrayList17 = new ArrayList();
                                                            i5 = i4;
                                                            longSparseArray7 = new LongSparseArray();
                                                        }
                                                        i5 = i4;
                                                        longSparseArray3 = longSparseArray2;
                                                        arrayList16 = arrayList3;
                                                        arrayList17 = arrayList2;
                                                        longSparseArray7 = longSparseArray;
                                                        arrayList6 = arrayList4;
                                                    }
                                                } else {
                                                    messageObject2 = messageObject;
                                                }
                                                if (arrayList202.size() != 100) {
                                                }
                                                getMessagesStorage().putMessages(new ArrayList<>(arrayList202), false, true, false, 0, i != 0 ? 1 : z18, 0L);
                                                getMessagesController().updateInterfaceWithMessages(j10, arrayList192, i != 0 ? 1 : z18);
                                                int i122 = z18;
                                                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[i122]);
                                                getUserConfig().saveConfig(i122);
                                                final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages2 = new TLRPC.TL_messages_forwardMessages();
                                                tL_messages_forwardMessages2.to_peer = inputPeer42;
                                                if (z3) {
                                                }
                                            } else {
                                                arrayList8 = arrayList;
                                                putToSendingMessages(tL_message, i == 0 ? true : z18);
                                                if (BuildVars.LOGS_ENABLED) {
                                                }
                                                if (messageObject == null) {
                                                    messageObject2 = messageObject;
                                                    if (arrayList202.size() != 100) {
                                                    }
                                                    getMessagesStorage().putMessages(new ArrayList<>(arrayList202), false, true, false, 0, i != 0 ? 1 : z18, 0L);
                                                    getMessagesController().updateInterfaceWithMessages(j10, arrayList192, i != 0 ? 1 : z18);
                                                    int i1222 = z18;
                                                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[i1222]);
                                                    getUserConfig().saveConfig(i1222);
                                                    final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages22 = new TLRPC.TL_messages_forwardMessages();
                                                    tL_messages_forwardMessages22.to_peer = inputPeer42;
                                                    if (z3) {
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        if (!tL_message2.entities.isEmpty()) {
                                        }
                                        if (tL_message2.attachPath == null) {
                                        }
                                        int newMessageId22 = getUserConfig().getNewMessageId();
                                        tL_message2.f1686id = newMessageId22;
                                        tL_message2.local_id = newMessageId22;
                                        tL_message2.out = true;
                                        j9 = messageObject3.messageOwner.grouped_id;
                                        if (j9 != 0) {
                                        }
                                        if (peer4.channel_id != 0) {
                                        }
                                    }
                                } else if (r352 == 0) {
                                    r14 = ChatObject.isActionBannedByDefault(chat, 19) ? 17 : 18;
                                    chat2 = chat;
                                    j7 = clientUserId;
                                    j8 = j6;
                                    str2 = str;
                                    r35 = r14;
                                    i5 = i10;
                                    z14 = z23;
                                    arrayList6 = arrayList15;
                                    r352 = r35;
                                    peer = peer4;
                                    arrayList5 = arrayList11;
                                    longSparseArray3 = longSparseArray8;
                                }
                            } else if (chat != null) {
                                if (r352 == 0) {
                                    r14 = ChatObject.isActionBannedByDefault(chat, 21) ? 15 : 16;
                                    chat2 = chat;
                                    j7 = clientUserId;
                                    j8 = j6;
                                    str2 = str;
                                    r35 = r14;
                                    i5 = i10;
                                    z14 = z23;
                                    arrayList6 = arrayList15;
                                    r352 = r35;
                                    peer = peer4;
                                    arrayList5 = arrayList11;
                                    longSparseArray3 = longSparseArray8;
                                }
                            } else if (r352 == 0) {
                                chat2 = chat;
                                j7 = clientUserId;
                                j8 = j6;
                                str2 = str;
                                i5 = i10;
                                z14 = z23;
                                arrayList6 = arrayList15;
                                r352 = 8;
                                peer = peer4;
                                arrayList5 = arrayList11;
                                longSparseArray3 = longSparseArray8;
                            }
                        } else if (chat != null) {
                            if (r352 == 0) {
                                c = ChatObject.isActionBannedByDefault(chat, 20) ? '\r' : (char) 14;
                                r35 = c;
                                chat2 = chat;
                                j7 = clientUserId;
                                j8 = j6;
                                str2 = str;
                                i5 = i10;
                                z14 = z23;
                                arrayList6 = arrayList15;
                                r352 = r35;
                                peer = peer4;
                                arrayList5 = arrayList11;
                                longSparseArray3 = longSparseArray8;
                            }
                        } else if (r352 == 0) {
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            r35 = 7;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    } else {
                        if (r352 == 0) {
                            r14 = ChatObject.isActionBannedByDefault(chat, 10) ? 21 : 22;
                            chat2 = chat;
                            j7 = clientUserId;
                            j8 = j6;
                            str2 = str;
                            r35 = r14;
                            i5 = i10;
                            z14 = z23;
                            arrayList6 = arrayList15;
                            r352 = r35;
                            peer = peer4;
                            arrayList5 = arrayList11;
                            longSparseArray3 = longSparseArray8;
                        }
                        arrayList2 = arrayList17;
                        chat2 = chat;
                        j7 = clientUserId;
                        j8 = j6;
                        str2 = str;
                        longSparseArray = longSparseArray7;
                        i5 = i10;
                        z14 = z23;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList16;
                        peer = peer4;
                        arrayList5 = arrayList11;
                        longSparseArray3 = longSparseArray8;
                        arrayList16 = arrayList3;
                        arrayList17 = arrayList2;
                        longSparseArray7 = longSparseArray;
                        arrayList6 = arrayList4;
                    }
                }
                i9 = i5 + 1;
                arrayList10 = arrayList;
                longSparseArray8 = longSparseArray3;
                arrayList11 = arrayList5;
                peer4 = peer;
                str = str2;
                z23 = z14;
                clientUserId = j7;
                j6 = j8;
                z18 = false;
                arrayList15 = arrayList6;
                chat = chat2;
                r352 = r352;
            }
            return r352;
        }
        MessageSuggestionParams messageSuggestionParams2 = messageSuggestionParams;
        SendMessagesHelper sendMessagesHelper2 = this;
        long j15 = j3;
        long j16 = sendMessagesHelper2.getMessagesController().getEncryptedChat(Integer.valueOf((int) j12)).user_id;
        boolean z35 = (!DialogObject.isUserDialog(j16) || sendMessagesHelper2.getMessagesController().getUser(Long.valueOf(j16)) == null || (userFull = sendMessagesHelper2.getMessagesController().getUserFull(j16)) == null) ? true : !userFull.voice_messages_forbidden;
        int i14 = 0;
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            MessageObject messageObject6 = arrayList.get(i15);
            if (z35 || !MessageObject.isVoiceMessage(messageObject6.messageOwner)) {
                if (!z35 && MessageObject.isRoundVideoMessage(messageObject6.messageOwner) && i14 == 0) {
                    i14 = 8;
                }
            } else if (i14 == 0) {
                i14 = 7;
            }
        }
        if (i14 == 0) {
            int i16 = 0;
            while (i16 < arrayList.size()) {
                sendMessagesHelper2.processForwardFromMyName(arrayList.get(i16), j12, j2, j15, messageSuggestionParams2);
                i16++;
                sendMessagesHelper2 = this;
                j12 = j;
                j15 = j3;
                messageSuggestionParams2 = messageSuggestionParams;
            }
        }
        return i14;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$7(ArrayList arrayList, long j, boolean z, boolean z2, boolean z3, int i, int i2, MessageObject messageObject, int i3, long j2, MessageSuggestionParams messageSuggestionParams, Long l) {
        sendMessage(arrayList, j, z, z2, z3, i, i2, messageObject, i3, l.longValue(), j2, messageSuggestionParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$17(final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, final long j, final int i, final boolean z, final boolean z2, final LongSparseArray longSparseArray, final ArrayList arrayList, final ArrayList arrayList2, final MessageObject messageObject, final TLRPC.Peer peer) {
        getConnectionsManager().sendRequest(tL_messages_forwardMessages, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda17
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendMessage$16(j, i, z, z2, longSparseArray, arrayList, arrayList2, messageObject, peer, tL_messages_forwardMessages, tLObject, tL_error);
            }
        }, 68);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$sendMessage$16(final long j, final int i, boolean z, boolean z2, LongSparseArray longSparseArray, ArrayList arrayList, final ArrayList arrayList2, final MessageObject messageObject, final TLRPC.Peer peer, final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, TLObject tLObject, final TLRPC.TL_error tL_error) {
        final int i2;
        int i3;
        String str;
        String str2;
        int i4;
        TLRPC.Message message;
        TLRPC.Message message2;
        int i5;
        int i6;
        long j2;
        SparseLongArray sparseLongArray;
        TLRPC.Updates updates;
        int i7;
        int i8;
        final TLRPC.Message message3;
        int iIndexOf;
        int i9;
        final SendMessagesHelper sendMessagesHelper = this;
        ArrayList arrayList3 = arrayList2;
        int i10 = 1;
        int i11 = 0;
        if (tL_error == null) {
            SparseLongArray sparseLongArray2 = new SparseLongArray();
            TLRPC.Updates updates2 = (TLRPC.Updates) tLObject;
            int i12 = 0;
            while (i12 < updates2.updates.size()) {
                TLRPC.Update update = updates2.updates.get(i12);
                if (update instanceof TLRPC.TL_updateMessageID) {
                    TLRPC.TL_updateMessageID tL_updateMessageID = (TLRPC.TL_updateMessageID) update;
                    sparseLongArray2.put(tL_updateMessageID.f1814id, tL_updateMessageID.random_id);
                    updates2.updates.remove(i12);
                    i12--;
                }
                i12++;
            }
            sendMessagesHelper.getNotificationCenter().postNotificationNameOnUIThread(NotificationCenter.savedMessagesForwarded, sparseLongArray2);
            Integer numValueOf = sendMessagesHelper.getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(j));
            if (numValueOf == null) {
                numValueOf = Integer.valueOf(sendMessagesHelper.getMessagesStorage().getDialogReadMax(true, j));
                sendMessagesHelper.getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(j), numValueOf);
            }
            Integer num = numValueOf;
            int i13 = 0;
            int i14 = 0;
            while (i13 < updates2.updates.size()) {
                TLRPC.Update update2 = updates2.updates.get(i13);
                boolean z3 = update2 instanceof TLRPC.TL_updateNewMessage;
                if (z3 || (update2 instanceof TLRPC.TL_updateNewChannelMessage) || (update2 instanceof TLRPC.TL_updateNewScheduledMessage) || (update2 instanceof TLRPC.TL_updateQuickReplyMessage)) {
                    int i15 = i != 0 ? i10 : i11;
                    updates2.updates.remove(i13);
                    int i16 = i13 - 1;
                    if (z3) {
                        TLRPC.TL_updateNewMessage tL_updateNewMessage = (TLRPC.TL_updateNewMessage) update2;
                        message = tL_updateNewMessage.message;
                        i4 = i14;
                        sendMessagesHelper.getMessagesController().processNewDifferenceParams(-1, tL_updateNewMessage.pts, -1, tL_updateNewMessage.pts_count);
                    } else {
                        i4 = i14;
                        if (update2 instanceof TLRPC.TL_updateNewScheduledMessage) {
                            message2 = ((TLRPC.TL_updateNewScheduledMessage) update2).message;
                            i5 = 1;
                            i6 = (z || message2.date == 2147483646) ? i5 : 0;
                            ImageLoader.saveMessageThumbs(message2);
                            if (i6 == 0) {
                                message2.unread = num.intValue() < message2.f1686id;
                            }
                            if (!z2) {
                                message2.out = true;
                                message2.unread = false;
                                message2.media_unread = false;
                            }
                            j2 = sparseLongArray2.get(message2.f1686id);
                            if (j2 != 0 || (message3 = (TLRPC.Message) longSparseArray.get(j2)) == null || (iIndexOf = arrayList.indexOf(message3)) == -1) {
                                sendMessagesHelper = this;
                                sparseLongArray = sparseLongArray2;
                                updates = updates2;
                                i13 = i16;
                                i7 = i4;
                            } else {
                                MessageObject messageObject2 = (MessageObject) arrayList3.get(iIndexOf);
                                arrayList.remove(iIndexOf);
                                arrayList3.remove(iIndexOf);
                                final int i17 = message3.f1686id;
                                final ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(message2);
                                TLRPC.Message message4 = messageObject2.messageOwner;
                                message4.post_author = message2.post_author;
                                if ((message2.flags & 33554432) != 0) {
                                    message4.ttl_period = message2.ttl_period;
                                    message4.flags |= 33554432;
                                }
                                final int i18 = i15;
                                sparseLongArray = sparseLongArray2;
                                int i19 = i4;
                                TLRPC.Updates updates3 = updates2;
                                updateMediaPaths(messageObject2, message2, message2.f1686id, null, true);
                                final int mediaExistanceFlags = messageObject2.getMediaExistanceFlags();
                                message3.f1686id = message2.f1686id;
                                i7 = i19 + 1;
                                if (i18 != i6) {
                                    sendMessagesHelper = this;
                                    final int i20 = i6;
                                    final TLRPC.Message message5 = message2;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$sendMessage$10(arrayList4, i20, i17, message3, i18, message5, messageObject, i);
                                        }
                                    });
                                    i9 = i16;
                                    updates = updates3;
                                } else {
                                    i9 = i16;
                                    sendMessagesHelper = this;
                                    updates = updates3;
                                    final TLRPC.Message message6 = message2;
                                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda40
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$sendMessage$12(i, message6, message3, peer, i17, arrayList4, j, mediaExistanceFlags);
                                        }
                                    });
                                }
                                i13 = i9;
                            }
                            i8 = 1;
                        } else if (update2 instanceof TLRPC.TL_updateQuickReplyMessage) {
                            QuickRepliesController.getInstance(sendMessagesHelper.currentAccount).processUpdate(update2, null, 0);
                            message = ((TLRPC.TL_updateQuickReplyMessage) update2).message;
                        } else {
                            TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage = (TLRPC.TL_updateNewChannelMessage) update2;
                            message = tL_updateNewChannelMessage.message;
                            sendMessagesHelper.getMessagesController().processNewChannelDifferenceParams(tL_updateNewChannelMessage.pts, tL_updateNewChannelMessage.pts_count, message.peer_id.channel_id);
                        }
                    }
                    message2 = message;
                    i5 = 0;
                    if (z) {
                        ImageLoader.saveMessageThumbs(message2);
                        if (i6 == 0) {
                        }
                        if (!z2) {
                        }
                        j2 = sparseLongArray2.get(message2.f1686id);
                        if (j2 != 0) {
                            sendMessagesHelper = this;
                            sparseLongArray = sparseLongArray2;
                            updates = updates2;
                            i13 = i16;
                            i7 = i4;
                            i8 = 1;
                        }
                    }
                } else {
                    i7 = i14;
                    sparseLongArray = sparseLongArray2;
                    i8 = i10;
                    updates = updates2;
                }
                i13 += i8;
                arrayList3 = arrayList2;
                updates2 = updates;
                sparseLongArray2 = sparseLongArray;
                i14 = i7;
                i11 = 0;
                i10 = i8;
            }
            int i21 = i14;
            i3 = i10;
            i2 = i;
            TLRPC.Updates updates4 = updates2;
            if (updates4.updates.isEmpty()) {
                i11 = 0;
            } else {
                i11 = 0;
                sendMessagesHelper.getMessagesController().processUpdates(updates4, false);
            }
            sendMessagesHelper.getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), i3, i21);
        } else {
            i2 = i;
            i3 = 1;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendMessage$13(tL_error, tL_messages_forwardMessages);
                }
            });
        }
        for (int i22 = i11; i22 < arrayList.size(); i22++) {
            final TLRPC.Message message7 = (TLRPC.Message) arrayList.get(i22);
            sendMessagesHelper.getMessagesStorage().markMessageAsSendError(message7, i2 != 0 ? i3 : i11);
            if (tL_error != null && (str2 = tL_error.text) != null && str2.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
                StarsController.getInstance(sendMessagesHelper.currentAccount);
                message7.errorAllowedPriceStars = StarsController.getAllowedPaidStars(tL_messages_forwardMessages);
                message7.errorNewPriceStars = Long.parseLong(tL_error.text.substring(23)) / ((long) tL_messages_forwardMessages.f1755id.size());
                sendMessagesHelper.getMessagesStorage().updateMessageCustomParams(MessageObject.getDialogId(message7), message7);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendMessage$14(message7, i2);
                }
            });
        }
        if (tL_error == null || (str = tL_error.text) == null || !str.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$15(arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$10(final ArrayList arrayList, final int i, final int i2, final TLRPC.Message message, final int i3, final TLRPC.Message message2, final MessageObject messageObject, final int i4) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$9(arrayList, i, i2, message, i3, message2, messageObject, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$9(ArrayList arrayList, final int i, final int i2, final TLRPC.Message message, final int i3, final TLRPC.Message message2, final MessageObject messageObject, final int i4) {
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i, 0L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$8(i2, message, i3, i, message2, messageObject, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$8(int i, TLRPC.Message message, int i2, int i3, TLRPC.Message message2, MessageObject messageObject, int i4) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(i));
        boolean z = true;
        getMessagesController().deleteMessages(arrayList, null, null, message.dialog_id, false, i2, false, 0L, null, 0, i3 == 1, message2.f1686id);
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        arrayList2.add(new MessageObject(messageObject.currentAccount, messageObject.messageOwner, true, true));
        getMessagesController().updateInterfaceWithMessages(message.dialog_id, arrayList2, i3);
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        processSentMessage(i);
        if (i4 == 0) {
            z = false;
        }
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$12(final int i, final TLRPC.Message message, final TLRPC.Message message2, TLRPC.Peer peer, final int i2, ArrayList arrayList, final long j, final int i3) {
        int i4 = i != 0 ? 1 : 0;
        if (message.quick_reply_shortcut_id != 0 || message.quick_reply_shortcut != null) {
            i4 = 5;
        }
        int i5 = i4;
        getMessagesStorage().updateMessageStateAndId(message2.random_id, MessageObject.getPeerId(peer), Integer.valueOf(i2), message2.f1686id, 0, false, i != 0 ? 1 : 0, message.quick_reply_shortcut_id);
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i5, message.quick_reply_shortcut_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$11(message2, j, i2, message, i3, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$11(TLRPC.Message message, long j, int i, TLRPC.Message message2, int i2, int i3) {
        message.send_state = 0;
        getMediaDataController().increasePeerRaiting(j);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(message2.f1686id), message2, Long.valueOf(j), 0L, Integer.valueOf(i2), Boolean.valueOf(i3 != 0));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i), Integer.valueOf(message2.f1686id), message2, Long.valueOf(j), 0L, Integer.valueOf(i2), Boolean.valueOf(i3 != 0));
        processSentMessage(i);
        removeFromSendingMessages(i, i3 != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$13(TLRPC.TL_error tL_error, TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages) {
        AlertsCreator.processError(this.currentAccount, tL_error, null, tL_messages_forwardMessages, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$14(TLRPC.Message message, int i) {
        message.send_state = 2;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(message.f1686id));
        processSentMessage(message.f1686id);
        removeFromSendingMessages(message.f1686id, i != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$15(ArrayList arrayList) {
        StarsController.getInstance(this.currentAccount).showPriceChangedToast(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$18(TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, ArrayList arrayList, Runnable runnable) {
        if (BotForumHelper.getInstance(this.currentAccount).beforeSendingFinalRequest(tL_messages_forwardMessages, arrayList, runnable)) {
            runnable.run();
        }
    }

    public static int canSendMessageToChat(TLRPC.Chat chat, MessageObject messageObject) {
        boolean zCanSendStickers = ChatObject.canSendStickers(chat);
        boolean zCanSendPhoto = ChatObject.canSendPhoto(chat);
        boolean zCanSendVideo = ChatObject.canSendVideo(chat);
        boolean zCanSendDocument = ChatObject.canSendDocument(chat);
        ChatObject.canSendEmbed(chat);
        boolean zCanSendPolls = ChatObject.canSendPolls(chat);
        boolean zCanSendRoundVideo = ChatObject.canSendRoundVideo(chat);
        boolean zCanSendVoice = ChatObject.canSendVoice(chat);
        boolean zCanSendMusic = ChatObject.canSendMusic(chat);
        boolean z = messageObject.isSticker() || messageObject.isAnimatedSticker() || messageObject.isGif() || messageObject.isGame();
        if (!zCanSendStickers && z) {
            return ChatObject.isActionBannedByDefault(chat, 8) ? 4 : 1;
        }
        if (!zCanSendPhoto && (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) && !messageObject.isVideo() && !z) {
            return ChatObject.isActionBannedByDefault(chat, 16) ? 10 : 12;
        }
        if (!zCanSendMusic && messageObject.isMusic()) {
            return ChatObject.isActionBannedByDefault(chat, 18) ? 19 : 20;
        }
        if (!zCanSendVideo && messageObject.isVideo() && !z) {
            return ChatObject.isActionBannedByDefault(chat, 17) ? 9 : 11;
        }
        if (!zCanSendPolls && (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaPoll)) {
            return ChatObject.isActionBannedByDefault(chat, 10) ? 6 : 3;
        }
        if (!zCanSendPolls && (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaToDo)) {
            return ChatObject.isActionBannedByDefault(chat, 10) ? 21 : 22;
        }
        if (!zCanSendVoice && MessageObject.isVoiceMessage(messageObject.messageOwner)) {
            return ChatObject.isActionBannedByDefault(chat, 20) ? 13 : 14;
        }
        if (!zCanSendRoundVideo && MessageObject.isRoundVideoMessage(messageObject.messageOwner)) {
            return ChatObject.isActionBannedByDefault(chat, 21) ? 15 : 16;
        }
        if (zCanSendDocument || !(messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaDocument) || z) {
            return 0;
        }
        return ChatObject.isActionBannedByDefault(chat, 19) ? 17 : 18;
    }

    private void writePreviousMessageData(TLRPC.Message message, SerializedData serializedData) {
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia == null) {
            new TLRPC.TL_messageMediaEmpty().serializeToStream(serializedData);
        } else {
            messageMedia.serializeToStream(serializedData);
        }
        String str = message.message;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        serializedData.writeString(str);
        String str3 = message.attachPath;
        if (str3 != null) {
            str2 = str3;
        }
        serializedData.writeString(str2);
        int size = message.entities.size();
        serializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            ((TLRPC.MessageEntity) message.entities.get(i)).serializeToStream(serializedData);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(34:(1:6)(1:7)|8|379|9|(1:20)(1:19)|21|(5:23|(1:45)(2:29|(1:31)(2:32|(3:34|(1:39)(1:38)|40)(2:41|(1:43)(1:44))))|46|(1:52)(1:51)|53)(5:54|(1:56)|57|(3:59|(1:66)(1:65)|67)(1:(5:69|(1:74)(1:73)|(1:76)|77|(1:79)(1:(1:81)))(2:82|(1:84)(1:85)))|86)|87|(1:89)|90|(1:97)|98|(1:102)(1:101)|(5:104|(2:106|(4:108|(1:110)(2:111|(1:113))|114|(1:118))(3:119|(1:121)(2:122|(2:127|(1:129))(1:126))|130))(1:131)|132|(2:134|(1:140)(1:139))|141)(1:142)|(1:147)(1:146)|148|(2:154|(1:385))|153|(4:161|(1:170)(1:(2:179|272)(1:177))|171|172)(16:180|(7:182|(1:190)(4:186|(1:188)|383|189)|191|(1:193)(3:194|(1:196)|197)|198|(1:205)(1:204)|206)(2:207|(12:209|(4:213|(1:215)|384|216)|217|(4:(2:220|(0))(1:223)|222|224|(1:226))(1:227)|228|(1:230)(3:231|(1:233)|234)|235|(2:237|(1:239))|240|(1:242)(2:(0)(1:246)|248)|247|248)(2:249|(5:251|(1:253)(3:254|(1:256)|257)|258|(2:263|(1:265))|266)(3:267|(2:269|(2:271|172))|272)))|273|(4:275|(2:277|(1:279))(0)|377|378)|280|(1:282)(2:283|(1:285))|286|(2:288|(1:290))|291|(1:293)|294|(4:296|(1:298)(2:300|(1:304))|299|305)|(1:307)|308|380|(4:310|311|312|313)(3:316|381|(1:(3:320|327|328)(4:321|322|323|324))(3:329|382|(3:(5:334|335|336|337|338)|341|342)(2:343|(4:345|346|347|348)(2:349|(1:(3:353|359|360)(5:354|355|356|357|358))(2:361|(3:(5:366|367|368|369|370)|371|372)(2:373|(2:375|376)(1:386))))))))|173|273|(0)|280|(0)(0)|286|(0)|291|(0)|294|(0)|(0)|308|380|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0677, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:275:0x05aa A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x05d0 A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x05d9 A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05e4 A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0603 A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0612 A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x065b A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0660 A[Catch: Exception -> 0x0059, TRY_LEAVE, TryCatch #0 {Exception -> 0x0059, blocks: (B:9:0x0032, B:11:0x003c, B:13:0x004e, B:23:0x0065, B:26:0x006f, B:29:0x0074, B:31:0x0078, B:46:0x00a5, B:49:0x00ab, B:51:0x00b1, B:53:0x00b8, B:87:0x01d2, B:89:0x01d6, B:90:0x01da, B:98:0x01f4, B:104:0x01ff, B:106:0x0203, B:108:0x0215, B:110:0x0219, B:114:0x022e, B:116:0x0232, B:118:0x0238, B:132:0x0280, B:134:0x02b3, B:136:0x02bb, B:139:0x02c0, B:140:0x02c7, B:141:0x02ca, B:144:0x02f7, B:146:0x02fd, B:161:0x031d, B:163:0x0321, B:166:0x0327, B:175:0x0342, B:177:0x0346, B:273:0x05a6, B:275:0x05aa, B:280:0x05b3, B:282:0x05d0, B:286:0x05e0, B:288:0x05e4, B:290:0x05f4, B:291:0x05fc, B:293:0x0603, B:294:0x060e, B:296:0x0612, B:298:0x062a, B:305:0x0655, B:300:0x0632, B:302:0x0646, B:304:0x064c, B:307:0x065b, B:310:0x0660, B:323:0x068f, B:327:0x0698, B:334:0x06a9, B:341:0x06c5, B:345:0x06cc, B:359:0x0704, B:366:0x0713, B:371:0x072b, B:375:0x0733, B:283:0x05d9, B:285:0x05dd, B:168:0x032d, B:170:0x0331, B:182:0x0368, B:184:0x0371, B:186:0x0379, B:188:0x038a, B:189:0x03a3, B:191:0x03b3, B:198:0x03e1, B:200:0x03f7, B:202:0x03fd, B:204:0x0403, B:205:0x0406, B:194:0x03be, B:196:0x03d8, B:197:0x03dd, B:209:0x0427, B:211:0x0430, B:213:0x0438, B:215:0x0449, B:216:0x045e, B:217:0x0469, B:220:0x0479, B:224:0x0484, B:226:0x048a, B:228:0x0493, B:235:0x04c0, B:237:0x04d8, B:239:0x04e5, B:240:0x04e9, B:242:0x04f1, B:248:0x050a, B:244:0x0501, B:246:0x0505, B:231:0x049e, B:233:0x04b8, B:234:0x04bd, B:251:0x0516, B:258:0x0552, B:261:0x0568, B:263:0x056c, B:265:0x0579, B:266:0x057d, B:254:0x0530, B:256:0x054a, B:257:0x054f, B:269:0x058a, B:271:0x0594, B:111:0x0222, B:113:0x0228, B:119:0x023c, B:121:0x0240, B:130:0x027a, B:122:0x0249, B:124:0x025d, B:126:0x0263, B:127:0x026c, B:129:0x0274, B:95:0x01e9, B:97:0x01f1, B:32:0x0080, B:34:0x0084, B:40:0x0094, B:41:0x0097, B:54:0x00c4, B:56:0x00d6, B:57:0x00db, B:59:0x0106, B:61:0x0119, B:63:0x011f, B:65:0x0125, B:86:0x01bf, B:66:0x0128, B:69:0x014d, B:76:0x016d, B:77:0x0177, B:79:0x017d, B:81:0x018f, B:82:0x01b3), top: B:379:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x067c  */
    /* JADX WARN: Type inference failed for: r32v0, types: [org.telegram.messenger.BaseController, org.telegram.messenger.SendMessagesHelper] */
    /* JADX WARN: Type inference failed for: r36v21 */
    /* JADX WARN: Type inference failed for: r36v22 */
    /* JADX WARN: Type inference failed for: r36v23 */
    /* JADX WARN: Type inference failed for: r36v24 */
    /* JADX WARN: Type inference failed for: r36v7 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void editMessage(MessageObject messageObject, TLRPC.TL_photo tL_photo, VideoEditedInfo videoEditedInfo, TLRPC.TL_document tL_document, String str, TLRPC.PhotoSize photoSize, HashMap<String, String> map, boolean z, boolean z2, Object obj) {
        long dialogId;
        char c;
        String str2;
        byte b;
        HashMap<String, String> map2;
        VideoEditedInfo videoEditedInfo2;
        Object obj2;
        VideoEditedInfo videoEditedInfo3;
        boolean z3;
        String str3;
        char c2;
        long j;
        TLRPC.InputMedia inputMedia;
        boolean z4;
        TLRPC.InputMedia inputMedia2;
        DelayedMessage delayedMessage;
        boolean z5;
        boolean z6;
        VideoEditedInfo videoEditedInfo4;
        boolean z7;
        TLRPC.InputMedia inputMedia3;
        String str4;
        char c3;
        TLRPC.InputMedia inputMedia4;
        boolean z8;
        TLRPC.InputMedia inputMedia5;
        String str5;
        char c4;
        TLRPC.InputMedia inputMedia6;
        ?? r36;
        boolean z9;
        TLRPC.InputMedia inputMedia7;
        TLRPC.Message message;
        CharSequence charSequence;
        char c5;
        char c6;
        TLRPC.InputMedia tL_inputMediaEmpty;
        TLRPC.EncryptedChat encryptedChat;
        TLRPC.TL_photo tL_photo2 = tL_photo;
        TLRPC.TL_document tL_document2 = tL_document;
        if (messageObject == null) {
            return;
        }
        HashMap<String, String> map3 = map == null ? new HashMap<>() : map;
        LocaleUtils.replaceCustomEmojis(this.currentAccount, messageObject.getDialogId(), messageObject.editingMessageEntities);
        TLRPC.Message message2 = messageObject.messageOwner;
        messageObject.cancelEditing = false;
        try {
            dialogId = messageObject.getDialogId();
            boolean z10 = !DialogObject.isEncryptedDialog(dialogId) || ((encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)))) != null && AndroidUtilities.getPeerLayerVersion(encryptedChat.layer) >= 101);
            if (z) {
                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) || messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaEmpty)) {
                    videoEditedInfo2 = videoEditedInfo;
                    b = 1;
                } else if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                    tL_photo2 = (TLRPC.TL_photo) messageMedia.photo;
                    videoEditedInfo2 = videoEditedInfo;
                    b = 2;
                } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    tL_document2 = (TLRPC.TL_document) messageMedia.document;
                    b = (MessageObject.isVideoDocument(tL_document2) || videoEditedInfo != null) ? (byte) 3 : (byte) 7;
                    videoEditedInfo2 = messageObject.videoEditedInfo;
                } else {
                    videoEditedInfo2 = videoEditedInfo;
                    b = messageMedia instanceof TLRPC.TL_messageMediaToDo ? (byte) 10 : (byte) -1;
                }
                map2 = message2.params;
                obj2 = (obj == null && map2 != null && map2.containsKey("parentObject")) ? map2.get("parentObject") : obj;
                messageObject.editingMessage = message2.message;
                messageObject.editingMessageEntities = message2.entities;
                str2 = message2.attachPath;
            } else {
                TLRPC.MessageMedia messageMedia2 = message2.media;
                messageObject.previousMedia = messageMedia2;
                messageObject.previousMessage = message2.message;
                messageObject.previousMessageEntities = message2.entities;
                messageObject.previousAttachPath = message2.attachPath;
                if (messageMedia2 == null) {
                    new TLRPC.TL_messageMediaEmpty();
                }
                SerializedData serializedData = new SerializedData(true);
                writePreviousMessageData(message2, serializedData);
                SerializedData serializedData2 = new SerializedData(serializedData.length());
                writePreviousMessageData(message2, serializedData2);
                map3.put("prevMedia", Base64.encodeToString(serializedData2.toByteArray(), 0));
                serializedData2.cleanup();
                if (tL_photo2 != null) {
                    TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
                    message2.media = tL_messageMediaPhoto;
                    tL_messageMediaPhoto.flags |= 3;
                    tL_messageMediaPhoto.photo = tL_photo2;
                    tL_messageMediaPhoto.spoiler = z2;
                    if (str != null && str.length() > 0 && str.startsWith("http")) {
                        message2.attachPath = str;
                    } else {
                        ArrayList arrayList = tL_photo2.sizes;
                        message2.attachPath = FileLoader.getInstance(this.currentAccount).getPathToAttach(((TLRPC.PhotoSize) arrayList.get(arrayList.size() - 1)).location, true).toString();
                    }
                    c = 2;
                } else if (tL_document2 != null) {
                    TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                    message2.media = tL_messageMediaDocument;
                    tL_messageMediaDocument.flags |= 3;
                    tL_messageMediaDocument.document = tL_document2;
                    tL_messageMediaDocument.spoiler = z2;
                    c = (MessageObject.isVideoDocument(tL_document2) || videoEditedInfo != null) ? (char) 3 : (char) 7;
                    if (videoEditedInfo != null) {
                        map3.put("ve", videoEditedInfo.getString());
                    }
                    message2.attachPath = str;
                    if (photoSize instanceof ImageLoader.PhotoSizeFromPhoto) {
                        TLRPC.MessageMedia messageMedia3 = message2.media;
                        messageMedia3.flags |= 512;
                        messageMedia3.video_cover = ((ImageLoader.PhotoSizeFromPhoto) photoSize).photo;
                    } else if (photoSize != null) {
                        TLRPC.TL_photo tL_photo3 = new TLRPC.TL_photo();
                        tL_photo3.date = getConnectionsManager().getCurrentTime();
                        tL_photo3.sizes.add(photoSize);
                        tL_photo3.file_reference = new byte[0];
                        TLRPC.MessageMedia messageMedia4 = message2.media;
                        messageMedia4.video_cover = tL_photo3;
                        messageMedia4.flags |= 512;
                    }
                } else {
                    c = messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaToDo ? '\n' : (char) 1;
                }
                message2.params = map3;
                message2.send_state = 3;
                message2.errorNewPriceStars = 0L;
                message2.errorAllowedPriceStars = 0L;
                str2 = str;
                b = c;
                map2 = map3;
                videoEditedInfo2 = videoEditedInfo;
                obj2 = obj;
            }
            if (message2.attachPath == null) {
                message2.attachPath = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            message2.local_id = 0;
            int i = messageObject.type;
            VideoEditedInfo videoEditedInfo5 = videoEditedInfo2;
            if ((i == 3 || videoEditedInfo5 != null || i == 2) && !TextUtils.isEmpty(message2.attachPath)) {
                messageObject.attachPathExists = true;
            }
            VideoEditedInfo videoEditedInfo6 = messageObject.videoEditedInfo;
            if (videoEditedInfo6 == null || videoEditedInfo5 != null) {
                videoEditedInfo6 = videoEditedInfo5;
            }
            if (z) {
                videoEditedInfo3 = videoEditedInfo6;
                z3 = z10;
            } else {
                CharSequence charSequence2 = messageObject.editingMessage;
                if (charSequence2 != null) {
                    String str6 = message2.message;
                    String string = charSequence2.toString();
                    message2.message = string;
                    videoEditedInfo3 = videoEditedInfo6;
                    messageObject.caption = null;
                    if (b == 1) {
                        ArrayList<TLRPC.MessageEntity> arrayList2 = messageObject.editingMessageEntities;
                        if (arrayList2 != null) {
                            message2.entities = arrayList2;
                            message2.flags |= 128;
                        } else if (!TextUtils.equals(str6, string)) {
                            message2.flags &= -129;
                        }
                        TLRPC.Message message3 = messageObject.messageOwner;
                        if (message3 != null && (message3.media instanceof TLRPC.TL_messageMediaPaidMedia)) {
                            messageObject.generateCaption();
                        }
                    } else {
                        ArrayList<TLRPC.MessageEntity> arrayList3 = messageObject.editingMessageEntities;
                        if (arrayList3 != null) {
                            message2.entities = arrayList3;
                            message2.flags |= 128;
                        } else {
                            ArrayList<TLRPC.MessageEntity> entities = getMediaDataController().getEntities(new CharSequence[]{messageObject.editingMessage}, z10);
                            if (entities != null && !entities.isEmpty()) {
                                message2.entities = entities;
                                message2.flags |= 128;
                            } else if (!TextUtils.equals(str6, message2.message)) {
                                message2.flags &= -129;
                            }
                        }
                        messageObject.generateCaption();
                    }
                } else {
                    videoEditedInfo3 = videoEditedInfo6;
                }
                ArrayList<TLRPC.Message> arrayList4 = new ArrayList<>();
                arrayList4.add(message2);
                getMessagesStorage().putMessages(arrayList4, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
                getMessagesController().getTopicsController().processEditedMessage(message2);
                messageObject.type = -1;
                messageObject.setType();
                if (b == 1) {
                    TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                    if ((messageMedia5 instanceof TLRPC.TL_messageMediaPhoto) || (messageMedia5 instanceof TLRPC.TL_messageMediaDocument)) {
                        messageObject.generateCaption();
                    } else {
                        messageObject.resetLayout();
                        messageObject.checkLayout();
                    }
                }
                messageObject.createMessageSendInfo();
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(messageObject);
                z3 = z10;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(dialogId), arrayList5);
            }
            str3 = (map2 == null || !map2.containsKey("originalPath")) ? null : map2.get("originalPath");
            c2 = '\b';
            if (b < 1 || b > 3) {
                if ((b < 5 || b > 8) && b != 10) {
                    return;
                }
            }
        } catch (Exception e) {
            e = e;
        }
        if (b == 1) {
            TLRPC.MessageMedia messageMedia6 = message2.media;
            if ((messageMedia6 == null || (messageMedia6 instanceof TLRPC.TL_messageMediaEmpty) || (messageMedia6 != null && (messageMedia6.webpage instanceof TLRPC.TL_webPageEmpty))) && !messageObject.editingMessageSearchWebPage) {
                tL_inputMediaEmpty = new TLRPC.TL_inputMediaEmpty();
            } else if (messageMedia6 == null || messageMedia6.webpage == null) {
                c4 = '\b';
                j = dialogId;
                z6 = false;
                inputMedia6 = null;
                c5 = c4;
            } else {
                TLRPC.TL_inputMediaWebPage tL_inputMediaWebPage = new TLRPC.TL_inputMediaWebPage();
                TLRPC.MessageMedia messageMedia7 = message2.media;
                tL_inputMediaWebPage.url = messageMedia7.webpage.url;
                tL_inputMediaWebPage.force_small_media = messageMedia7.force_small_media;
                tL_inputMediaWebPage.force_large_media = messageMedia7.force_large_media;
                tL_inputMediaEmpty = tL_inputMediaWebPage;
            }
            inputMedia = tL_inputMediaEmpty;
            c6 = '\b';
            j = dialogId;
            z6 = false;
            inputMedia6 = inputMedia;
            c5 = c6;
        } else {
            if (b == 2) {
                TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                tL_inputMediaUploadedPhoto.spoiler = z2;
                if (map2 == null || (str5 = map2.get("masks")) == null) {
                    c3 = '\b';
                } else {
                    SerializedData serializedData3 = new SerializedData(Utilities.hexToBytes(str5));
                    boolean z11 = false;
                    int int32 = serializedData3.readInt32(false);
                    int i2 = 0;
                    while (i2 < int32) {
                        tL_inputMediaUploadedPhoto.stickers.add(TLRPC.InputDocument.TLdeserialize(serializedData3, serializedData3.readInt32(z11), z11));
                        i2++;
                        int32 = int32;
                        c2 = c2;
                        z11 = false;
                    }
                    c3 = c2;
                    tL_inputMediaUploadedPhoto.flags |= 1;
                    serializedData3.cleanup();
                }
                if (tL_photo2.access_hash == 0) {
                    inputMedia4 = tL_inputMediaUploadedPhoto;
                    z8 = true;
                } else {
                    TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = new TLRPC.TL_inputMediaPhoto();
                    TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                    tL_inputMediaPhoto.f1733id = tL_inputPhoto;
                    tL_inputPhoto.f1684id = tL_photo2.f1692id;
                    tL_inputPhoto.access_hash = tL_photo2.access_hash;
                    byte[] bArr = tL_photo2.file_reference;
                    tL_inputPhoto.file_reference = bArr;
                    if (bArr == null) {
                        tL_inputPhoto.file_reference = new byte[0];
                    }
                    tL_inputMediaPhoto.spoiler = z2;
                    inputMedia4 = tL_inputMediaPhoto;
                    z8 = false;
                }
                j = dialogId;
                DelayedMessage delayedMessage2 = new DelayedMessage(j);
                delayedMessage2.type = 0;
                delayedMessage2.obj = messageObject;
                delayedMessage2.originalPath = str3;
                delayedMessage2.parentObject = obj2;
                delayedMessage2.inputUploadMedia = tL_inputMediaUploadedPhoto;
                delayedMessage2.performMediaUpload = z8;
                if (str2 != null && str2.length() > 0 && str2.startsWith("http")) {
                    delayedMessage2.httpLocation = str2;
                } else {
                    delayedMessage2.photoSize = (TLRPC.PhotoSize) tL_photo2.sizes.get(r2.size() - 1);
                    delayedMessage2.locationParent = tL_photo2;
                }
                z5 = z8;
                delayedMessage = delayedMessage2;
                z6 = false;
                inputMedia5 = inputMedia4;
                r36 = c3;
            } else {
                char c7 = '\b';
                j = dialogId;
                if (b == 3) {
                    TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
                    tL_inputMediaUploadedDocument.spoiler = z2;
                    if (map2 != null && (str4 = map2.get("masks")) != null) {
                        SerializedData serializedData4 = new SerializedData(Utilities.hexToBytes(str4));
                        boolean z12 = false;
                        int int322 = serializedData4.readInt32(false);
                        int i3 = 0;
                        while (i3 < int322) {
                            tL_inputMediaUploadedDocument.stickers.add(TLRPC.InputDocument.TLdeserialize(serializedData4, serializedData4.readInt32(z12), z12));
                            i3++;
                            int322 = int322;
                            z12 = false;
                        }
                        tL_inputMediaUploadedDocument.flags |= 1;
                        serializedData4.cleanup();
                    }
                    tL_inputMediaUploadedDocument.mime_type = tL_document2.mime_type;
                    tL_inputMediaUploadedDocument.attributes = tL_document2.attributes;
                    if (messageObject.isGif()) {
                        videoEditedInfo4 = videoEditedInfo3;
                    } else {
                        if (videoEditedInfo3 != null) {
                            videoEditedInfo4 = videoEditedInfo3;
                            if (!videoEditedInfo4.muted) {
                            }
                        } else {
                            videoEditedInfo4 = videoEditedInfo3;
                        }
                        tL_inputMediaUploadedDocument.nosound_video = true;
                        if (BuildVars.DEBUG_VERSION) {
                            FileLog.m1133d("nosound_video = true");
                        }
                    }
                    if (tL_document2.access_hash == 0) {
                        inputMedia3 = tL_inputMediaUploadedDocument;
                        z7 = true;
                    } else {
                        TLRPC.TL_inputMediaDocument tL_inputMediaDocument = new TLRPC.TL_inputMediaDocument();
                        TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                        tL_inputMediaDocument.f1731id = tL_inputDocument;
                        tL_inputDocument.f1677id = tL_document2.f1668id;
                        tL_inputDocument.access_hash = tL_document2.access_hash;
                        byte[] bArr2 = tL_document2.file_reference;
                        tL_inputDocument.file_reference = bArr2;
                        if (bArr2 == null) {
                            tL_inputDocument.file_reference = new byte[0];
                        }
                        tL_inputMediaDocument.spoiler = z2;
                        z7 = false;
                        inputMedia3 = tL_inputMediaDocument;
                    }
                    delayedMessage = new DelayedMessage(j);
                    delayedMessage.type = 1;
                    delayedMessage.obj = messageObject;
                    delayedMessage.originalPath = str3;
                    delayedMessage.parentObject = obj2;
                    delayedMessage.inputUploadMedia = tL_inputMediaUploadedDocument;
                    if (!tL_document2.thumbs.isEmpty()) {
                        TLRPC.PhotoSize photoSize2 = tL_document2.thumbs.get(0);
                        if (!(photoSize2 instanceof TLRPC.TL_photoStrippedSize)) {
                            delayedMessage.photoSize = photoSize2;
                            delayedMessage.locationParent = tL_document2;
                        }
                    }
                    delayedMessage.videoEditedInfo = videoEditedInfo4;
                    if (photoSize instanceof ImageLoader.PhotoSizeFromPhoto) {
                        tL_inputMediaUploadedDocument.video_cover = ((ImageLoader.PhotoSizeFromPhoto) photoSize).inputPhoto;
                        tL_inputMediaUploadedDocument.flags |= 64;
                    } else {
                        if (photoSize != null && !(photoSize instanceof TLRPC.TL_photoStrippedSize)) {
                            delayedMessage.coverPhotoSize = photoSize;
                            z6 = true;
                        }
                        delayedMessage.performMediaUpload = z7;
                        delayedMessage.performCoverUpload = z6;
                        z5 = z7;
                        inputMedia5 = inputMedia3;
                        r36 = c7;
                    }
                    z6 = false;
                    delayedMessage.performMediaUpload = z7;
                    delayedMessage.performCoverUpload = z6;
                    z5 = z7;
                    inputMedia5 = inputMedia3;
                    r36 = c7;
                } else {
                    VideoEditedInfo videoEditedInfo7 = videoEditedInfo3;
                    if (b == 7) {
                        TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument2 = new TLRPC.TL_inputMediaUploadedDocument();
                        tL_inputMediaUploadedDocument2.mime_type = tL_document2.mime_type;
                        tL_inputMediaUploadedDocument2.attributes = tL_document2.attributes;
                        tL_inputMediaUploadedDocument2.spoiler = z2;
                        if (tL_document2.access_hash == 0) {
                            inputMedia2 = tL_inputMediaUploadedDocument2;
                            z4 = true;
                        } else {
                            TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = new TLRPC.TL_inputMediaDocument();
                            TLRPC.TL_inputDocument tL_inputDocument2 = new TLRPC.TL_inputDocument();
                            tL_inputMediaDocument2.f1731id = tL_inputDocument2;
                            tL_inputDocument2.f1677id = tL_document2.f1668id;
                            tL_inputDocument2.access_hash = tL_document2.access_hash;
                            byte[] bArr3 = tL_document2.file_reference;
                            tL_inputDocument2.file_reference = bArr3;
                            if (bArr3 == null) {
                                tL_inputDocument2.file_reference = new byte[0];
                            }
                            tL_inputMediaDocument2.spoiler = z2;
                            z4 = false;
                            inputMedia2 = tL_inputMediaDocument2;
                        }
                        delayedMessage = new DelayedMessage(j);
                        delayedMessage.originalPath = str3;
                        delayedMessage.type = 2;
                        delayedMessage.obj = messageObject;
                        if (!tL_document2.thumbs.isEmpty() && (videoEditedInfo7 == null || !videoEditedInfo7.isSticker)) {
                            TLRPC.PhotoSize photoSize3 = tL_document2.thumbs.get(0);
                            if (!(photoSize3 instanceof TLRPC.TL_photoStrippedSize)) {
                                delayedMessage.photoSize = photoSize3;
                                delayedMessage.locationParent = tL_document2;
                            }
                        }
                        delayedMessage.parentObject = obj2;
                        delayedMessage.inputUploadMedia = tL_inputMediaUploadedDocument2;
                        delayedMessage.performMediaUpload = z4;
                        z5 = z4;
                        z6 = false;
                        inputMedia5 = inputMedia2;
                        r36 = c7;
                    } else {
                        c4 = c7;
                        if (b == 10) {
                            TLRPC.MessageMedia media = MessageObject.getMedia(messageObject.messageOwner);
                            c4 = c7;
                            if (media instanceof TLRPC.TL_messageMediaToDo) {
                                TLRPC.TL_inputMediaTodo tL_inputMediaTodo = new TLRPC.TL_inputMediaTodo();
                                tL_inputMediaTodo.todo = ((TLRPC.TL_messageMediaToDo) media).todo;
                                inputMedia = tL_inputMediaTodo;
                                c6 = c7;
                                z6 = false;
                                inputMedia6 = inputMedia;
                                c5 = c6;
                            }
                        }
                        z6 = false;
                        inputMedia6 = null;
                        c5 = c4;
                    }
                }
            }
            z9 = inputMedia5 instanceof TLRPC.TL_inputMediaEmpty;
            inputMedia7 = inputMedia5;
            if (z9) {
                int i4 = messageObject.type;
                if (i4 != 0) {
                    inputMedia7 = inputMedia5;
                    if (i4 == 19) {
                        inputMedia7 = null;
                    }
                }
                FileLog.m1136e(e);
                revertEditingMessageObject(messageObject);
                return;
            }
            TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
            tL_messages_editMessage.f1753id = messageObject.getId();
            tL_messages_editMessage.peer = getMessagesController().getInputPeer(j);
            message = messageObject.messageOwner;
            tL_messages_editMessage.invert_media = message.invert_media;
            if (inputMedia7 == null) {
                tL_messages_editMessage.flags |= 16384;
                tL_messages_editMessage.media = inputMedia7;
            } else if (!messageObject.editingMessageSearchWebPage) {
                tL_messages_editMessage.no_webpage = true;
            }
            if (messageObject.scheduled) {
                tL_messages_editMessage.schedule_date = message.date;
                int i5 = tL_messages_editMessage.flags;
                tL_messages_editMessage.flags = 32768 | i5;
                int i6 = message.schedule_repeat_period;
                if (i6 != 0) {
                    tL_messages_editMessage.schedule_repeat_period = i6;
                    tL_messages_editMessage.flags = i5 | 294912;
                }
            }
            if ((message.flags & TLObject.FLAG_30) != 0) {
                tL_messages_editMessage.quick_reply_shortcut_id = message.quick_reply_shortcut_id;
                tL_messages_editMessage.flags |= 131072;
            }
            charSequence = messageObject.editingMessage;
            if (charSequence != null) {
                tL_messages_editMessage.message = charSequence.toString();
                int i7 = tL_messages_editMessage.flags;
                tL_messages_editMessage.flags = i7 | 2048;
                tL_messages_editMessage.no_webpage = !messageObject.editingMessageSearchWebPage;
                ArrayList<TLRPC.MessageEntity> arrayList6 = messageObject.editingMessageEntities;
                if (arrayList6 != null) {
                    tL_messages_editMessage.entities = arrayList6;
                    tL_messages_editMessage.flags = i7 | 2056;
                } else {
                    ArrayList<TLRPC.MessageEntity> entities2 = getMediaDataController().getEntities(new CharSequence[]{messageObject.editingMessage}, z3);
                    if (entities2 != null && !entities2.isEmpty()) {
                        tL_messages_editMessage.entities = entities2;
                        tL_messages_editMessage.flags |= 8;
                    }
                }
                messageObject.editingMessage = null;
                messageObject.editingMessageEntities = null;
            }
            if (delayedMessage != null) {
                delayedMessage.sendRequest = tL_messages_editMessage;
            }
            if (b != 1) {
                performSendMessageRequest(tL_messages_editMessage, messageObject, null, delayedMessage, obj2, map2, messageObject.scheduled);
                return;
            }
            DelayedMessage delayedMessage3 = delayedMessage;
            try {
                if (b == 2) {
                    if (z5 || z6) {
                        performSendDelayedMessage(delayedMessage3);
                        return;
                    } else {
                        lambda$performSendMessageRequest$66(tL_messages_editMessage, messageObject, str3, null, true, delayedMessage3, obj2, map2, messageObject.scheduled);
                        return;
                    }
                }
                String str7 = str3;
                HashMap<String, String> map4 = map2;
                try {
                    if (b == 3) {
                        if (!z5 && !z6) {
                            performSendMessageRequest(tL_messages_editMessage, messageObject, str7, delayedMessage3, obj2, map4, messageObject.scheduled);
                            return;
                        }
                        performSendDelayedMessage(delayedMessage3);
                        return;
                    }
                    if (b == 6) {
                        performSendMessageRequest(tL_messages_editMessage, messageObject, str7, delayedMessage3, obj2, map4, messageObject.scheduled);
                        return;
                    }
                    if (b == 7) {
                        if (z5 || z6) {
                            performSendDelayedMessage(delayedMessage3);
                            return;
                        } else {
                            performSendMessageRequest(tL_messages_editMessage, messageObject, str7, delayedMessage3, obj2, map4, messageObject.scheduled);
                            return;
                        }
                    }
                    if (b != r36) {
                        if (b == 10) {
                            performSendMessageRequest(tL_messages_editMessage, messageObject, str7, delayedMessage3, obj2, map4, messageObject.scheduled);
                            return;
                        }
                        return;
                    } else {
                        if (!z5 && !z6) {
                            performSendMessageRequest(tL_messages_editMessage, messageObject, str7, delayedMessage3, obj2, map4, messageObject.scheduled);
                            return;
                        }
                        performSendDelayedMessage(delayedMessage3);
                        return;
                    }
                } catch (Exception e2) {
                    e = e2;
                    FileLog.m1136e(e);
                    revertEditingMessageObject(messageObject);
                    return;
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        delayedMessage = null;
        z5 = false;
        inputMedia5 = inputMedia6;
        r36 = c5;
        z9 = inputMedia5 instanceof TLRPC.TL_inputMediaEmpty;
        inputMedia7 = inputMedia5;
        if (z9) {
        }
        TLRPC.TL_messages_editMessage tL_messages_editMessage2 = new TLRPC.TL_messages_editMessage();
        tL_messages_editMessage2.f1753id = messageObject.getId();
        tL_messages_editMessage2.peer = getMessagesController().getInputPeer(j);
        message = messageObject.messageOwner;
        tL_messages_editMessage2.invert_media = message.invert_media;
        if (inputMedia7 == null) {
        }
        if (messageObject.scheduled) {
        }
        if ((message.flags & TLObject.FLAG_30) != 0) {
        }
        charSequence = messageObject.editingMessage;
        if (charSequence != null) {
        }
        if (delayedMessage != null) {
        }
        if (b != 1) {
        }
    }

    public int editMessage(MessageObject messageObject, String str, boolean z, final BaseFragment baseFragment, ArrayList<TLRPC.MessageEntity> arrayList, int i, int i2) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return 0;
        }
        LocaleUtils.replaceCustomEmojis(this.currentAccount, messageObject.getDialogId(), arrayList);
        final TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
        tL_messages_editMessage.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (str != null) {
            tL_messages_editMessage.message = str;
            tL_messages_editMessage.flags |= 2048;
            tL_messages_editMessage.no_webpage = !z;
        }
        tL_messages_editMessage.f1753id = messageObject.getId();
        TLRPC.Message message = messageObject.messageOwner;
        if (message != null && (message.flags & TLObject.FLAG_30) != 0) {
            tL_messages_editMessage.quick_reply_shortcut_id = message.quick_reply_shortcut_id;
            tL_messages_editMessage.flags |= 131072;
        }
        if (arrayList != null) {
            tL_messages_editMessage.entities = arrayList;
            tL_messages_editMessage.flags |= 8;
        }
        if (i != 0) {
            tL_messages_editMessage.schedule_date = i;
            int i3 = tL_messages_editMessage.flags;
            tL_messages_editMessage.flags = 32768 | i3;
            if (i2 != 0) {
                tL_messages_editMessage.schedule_repeat_period = i2;
                tL_messages_editMessage.flags = i3 | 294912;
            }
        }
        return getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda48
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$editMessage$20(baseFragment, tL_messages_editMessage, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editMessage$20(final BaseFragment baseFragment, final TLRPC.TL_messages_editMessage tL_messages_editMessage, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$editMessage$19(tL_error, baseFragment, tL_messages_editMessage);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editMessage$19(TLRPC.TL_error tL_error, BaseFragment baseFragment, TLRPC.TL_messages_editMessage tL_messages_editMessage) {
        AlertsCreator.processError(this.currentAccount, tL_error, baseFragment, tL_messages_editMessage, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLocation(Location location) {
        TLRPC.TL_messageMediaGeo tL_messageMediaGeo = new TLRPC.TL_messageMediaGeo();
        TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
        tL_messageMediaGeo.geo = tL_geoPoint;
        tL_geoPoint.lat = AndroidUtilities.fixLocationCoord(location.getLatitude());
        tL_messageMediaGeo.geo._long = AndroidUtilities.fixLocationCoord(location.getLongitude());
        Iterator<Map.Entry<String, MessageObject>> it = this.waitingForLocation.entrySet().iterator();
        while (it.hasNext()) {
            MessageObject value = it.next().getValue();
            sendMessage(SendMessageParams.m1179of((TLRPC.MessageMedia) tL_messageMediaGeo, value.getDialogId(), value, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0, 0));
        }
    }

    public void sendCurrentLocation(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton) {
        if (messageObject == null || keyboardButton == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(messageObject.getDialogId());
        sb.append("_");
        sb.append(messageObject.getId());
        sb.append("_");
        sb.append(Utilities.bytesToHex(keyboardButton.data));
        sb.append("_");
        sb.append(keyboardButton instanceof TLRPC.TL_keyboardButtonGame ? "1" : MVEL.VERSION_SUB);
        this.waitingForLocation.put(sb.toString(), messageObject);
        this.locationProvider.start();
    }

    public boolean isSendingCurrentLocation(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton) {
        if (messageObject == null || keyboardButton == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(messageObject.getDialogId());
        sb.append("_");
        sb.append(messageObject.getId());
        sb.append("_");
        sb.append(Utilities.bytesToHex(keyboardButton.data));
        sb.append("_");
        sb.append(keyboardButton instanceof TLRPC.TL_keyboardButtonGame ? "1" : MVEL.VERSION_SUB);
        return this.waitingForLocation.containsKey(sb.toString());
    }

    public void sendNotificationCallback(final long j, final int i, final byte[] bArr) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendNotificationCallback$23(j, i, bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$23(long j, int i, byte[] bArr) {
        TLRPC.Chat chatSync;
        TLRPC.User userSync;
        final String str = j + "_" + i + "_" + Utilities.bytesToHex(bArr) + "_0";
        this.waitingForCallback.put(str, Boolean.TRUE);
        final List<String> list = this.waitingForCallbackMap.get(j + "_" + i);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.waitingForCallbackMap.put(j + "_" + i, arrayList);
            list = arrayList;
        }
        list.add(str);
        if (DialogObject.isUserDialog(j)) {
            if (getMessagesController().getUser(Long.valueOf(j)) == null && (userSync = getMessagesStorage().getUserSync(j)) != null) {
                getMessagesController().putUser(userSync, true);
            }
        } else {
            long j2 = -j;
            if (getMessagesController().getChat(Long.valueOf(j2)) == null && (chatSync = getMessagesStorage().getChatSync(j2)) != null) {
                getMessagesController().putChat(chatSync, true);
            }
        }
        TLRPC.TL_messages_getBotCallbackAnswer tL_messages_getBotCallbackAnswer = new TLRPC.TL_messages_getBotCallbackAnswer();
        tL_messages_getBotCallbackAnswer.peer = getMessagesController().getInputPeer(j);
        tL_messages_getBotCallbackAnswer.msg_id = i;
        tL_messages_getBotCallbackAnswer.game = false;
        if (bArr != null) {
            tL_messages_getBotCallbackAnswer.flags |= 1;
            tL_messages_getBotCallbackAnswer.data = bArr;
        }
        getConnectionsManager().sendRequest(tL_messages_getBotCallbackAnswer, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda31
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendNotificationCallback$22(str, list, tLObject, tL_error);
            }
        }, 2);
        getMessagesController().markDialogAsRead(j, i, i, 0, false, 0L, 0, true, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$22(final String str, final List list, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendNotificationCallback$21(str, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$21(String str, List list) {
        this.waitingForCallback.remove(str);
        list.remove(str);
    }

    public void onMessageEdited(TLRPC.Message message) {
        if (message == null || message.reply_markup == null) {
            return;
        }
        List<String> listRemove = this.waitingForCallbackMap.remove(message.dialog_id + "_" + message.f1686id);
        if (listRemove != null) {
            Iterator<String> it = listRemove.iterator();
            while (it.hasNext()) {
                this.waitingForCallback.remove(it.next());
            }
        }
    }

    public byte[] isSendingVote(MessageObject messageObject) {
        if (messageObject == null) {
            return null;
        }
        return this.waitingForVote.get("poll_" + messageObject.getPollId());
    }

    public int sendVote(MessageObject messageObject, ArrayList<TLRPC.PollAnswer> arrayList, Runnable runnable) {
        return sendVote(messageObject, arrayList, runnable, true);
    }

    public int sendVote(final MessageObject messageObject, ArrayList<TLRPC.PollAnswer> arrayList, final Runnable runnable, final boolean z) {
        byte[] bArr;
        if (messageObject == null) {
            return 0;
        }
        final String str = "poll_" + messageObject.getPollId();
        if (this.waitingForCallback.containsKey(str)) {
            return 0;
        }
        TLRPC.TL_messages_sendVote tL_messages_sendVote = new TLRPC.TL_messages_sendVote();
        tL_messages_sendVote.msg_id = messageObject.getId();
        tL_messages_sendVote.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (arrayList != null) {
            bArr = new byte[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.PollAnswer pollAnswer = arrayList.get(i);
                if (pollAnswer != null) {
                    tL_messages_sendVote.options.add(pollAnswer.option);
                    bArr[i] = pollAnswer.option[0];
                }
            }
        } else {
            bArr = new byte[0];
        }
        this.waitingForVote.put(str, bArr);
        return getConnectionsManager().sendRequest(tL_messages_sendVote, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda45
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendVote$25(messageObject, z, str, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendVote$25(MessageObject messageObject, boolean z, final String str, final Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            this.voteSendTime.put(messageObject.getPollId(), 0L);
            if (z) {
                getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            }
            this.voteSendTime.put(messageObject.getPollId(), Long.valueOf(SystemClock.elapsedRealtime()));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendVote$24(str, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendVote$24(String str, Runnable runnable) {
        this.waitingForVote.remove(str);
        if (runnable != null) {
            runnable.run();
        }
    }

    public Boolean getSendingTodoValue(MessageObject messageObject, TLRPC.TodoItem todoItem) {
        return this.waitingForTodoUpdate.get(Integer.valueOf(Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()), Integer.valueOf(todoItem.f1823id))));
    }

    public int toggleTodo(final long j, final MessageObject messageObject, final TLRPC.TodoItem todoItem, final boolean z, final Runnable runnable) {
        if (messageObject == null) {
            return 0;
        }
        final int iHash = Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()), Integer.valueOf(todoItem.f1823id));
        this.waitingForTodoUpdate.put(Integer.valueOf(iHash), Boolean.valueOf(z));
        TLRPC.TL_messages_toggleTodoCompleted tL_messages_toggleTodoCompleted = new TLRPC.TL_messages_toggleTodoCompleted();
        tL_messages_toggleTodoCompleted.msg_id = messageObject.getId();
        tL_messages_toggleTodoCompleted.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (z) {
            tL_messages_toggleTodoCompleted.completed.add(Integer.valueOf(todoItem.f1823id));
        } else {
            tL_messages_toggleTodoCompleted.incompleted.add(Integer.valueOf(todoItem.f1823id));
        }
        return getConnectionsManager().sendRequest(tL_messages_toggleTodoCompleted, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda80
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$toggleTodo$27(messageObject, todoItem, z, j, iHash, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTodo$27(MessageObject messageObject, TLRPC.TodoItem todoItem, final boolean z, long j, final int i, final Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            getMessagesStorage().toggleTodo(messageObject.getDialogId(), messageObject.getId(), todoItem.f1823id, z, j);
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleTodo$26(i, z, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTodo$26(int i, boolean z, Runnable runnable) {
        Boolean bool = this.waitingForTodoUpdate.get(Integer.valueOf(i));
        if (bool != null && bool.booleanValue() == z) {
            this.waitingForTodoUpdate.remove(Integer.valueOf(i));
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    protected long getVoteSendTime(long j) {
        return ((Long) this.voteSendTime.get(j, 0L)).longValue();
    }

    public void sendReaction(MessageObject messageObject, ArrayList<ReactionsLayoutInBubble.VisibleReaction> arrayList, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2, BaseFragment baseFragment, final Runnable runnable) {
        if (messageObject == null || baseFragment == null) {
            return;
        }
        TLRPC.TL_messages_sendReaction tL_messages_sendReaction = new TLRPC.TL_messages_sendReaction();
        TLRPC.Message message = messageObject.messageOwner;
        if (message.isThreadMessage && message.fwd_from != null) {
            tL_messages_sendReaction.peer = getMessagesController().getInputPeer(messageObject.getFromChatId());
            tL_messages_sendReaction.msg_id = messageObject.messageOwner.fwd_from.saved_from_msg_id;
        } else {
            tL_messages_sendReaction.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
            tL_messages_sendReaction.msg_id = messageObject.getId();
        }
        tL_messages_sendReaction.add_to_recent = z2;
        if (z2 && visibleReaction != null) {
            MediaDataController.getInstance(this.currentAccount).recentReactions.add(0, ReactionsUtils.toTLReaction(visibleReaction));
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = arrayList.get(i);
                if (visibleReaction2.documentId != 0) {
                    TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
                    tL_reactionCustomEmoji.document_id = visibleReaction2.documentId;
                    tL_messages_sendReaction.reaction.add(tL_reactionCustomEmoji);
                    tL_messages_sendReaction.flags |= 1;
                } else if (visibleReaction2.emojicon != null) {
                    TLRPC.TL_reactionEmoji tL_reactionEmoji = new TLRPC.TL_reactionEmoji();
                    tL_reactionEmoji.emoticon = visibleReaction2.emojicon;
                    tL_messages_sendReaction.reaction.add(tL_reactionEmoji);
                    tL_messages_sendReaction.flags |= 1;
                }
            }
        }
        if (z) {
            tL_messages_sendReaction.flags |= 2;
            tL_messages_sendReaction.big = true;
        }
        getConnectionsManager().sendRequest(tL_messages_sendReaction, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda102
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendReaction$28(runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendReaction$28(Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    public void requestUrlAuth(final String str, final ChatActivity chatActivity, final boolean z) {
        final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
        tL_messages_requestUrlAuth.url = str;
        tL_messages_requestUrlAuth.flags |= 4;
        getConnectionsManager().sendRequest(tL_messages_requestUrlAuth, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda98
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$requestUrlAuth$30(tL_messages_requestUrlAuth, chatActivity, str, z, tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestUrlAuth$30(final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final ChatActivity chatActivity, final String str, final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestUrlAuth$29(tLObject, tL_messages_requestUrlAuth, chatActivity, str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestUrlAuth$29(TLObject tLObject, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, ChatActivity chatActivity, String str, boolean z) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC.TL_urlAuthResultRequest) {
                OAuthSheet.handle(false, this.currentAccount, tL_messages_requestUrlAuth, (TLRPC.TL_urlAuthResultRequest) tLObject);
                return;
            } else if (tLObject instanceof TLRPC.TL_urlAuthResultAccepted) {
                OAuthSheet.handle(false, this.currentAccount, tL_messages_requestUrlAuth, (TLRPC.TL_urlAuthResultAccepted) tLObject);
                return;
            } else {
                if (tLObject instanceof TLRPC.TL_urlAuthResultDefault) {
                    AlertsCreator.showOpenUrlAlert(chatActivity, str, false, z);
                    return;
                }
                return;
            }
        }
        AlertsCreator.showOpenUrlAlert(chatActivity, str, false, z);
    }

    public void sendCallback(boolean z, MessageObject messageObject, TLRPC.KeyboardButton keyboardButton, ChatActivity chatActivity) {
        lambda$sendCallback$33(z, messageObject, keyboardButton, null, null, chatActivity);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
    /* JADX INFO: renamed from: sendCallback, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$sendCallback$33(final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, final ChatActivity chatActivity) {
        final boolean z2;
        int i;
        List<String> list;
        final List<String> list2;
        if (messageObject == null || keyboardButton == null || chatActivity == null) {
            return;
        }
        boolean z3 = keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth;
        if (z3) {
            i = 3;
        } else {
            if (!(keyboardButton instanceof TLRPC.TL_keyboardButtonGame)) {
                if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
                    z2 = z;
                    i = 2;
                } else {
                    z2 = z;
                    i = 0;
                }
                final String str = messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(keyboardButton.data) + "_" + i;
                this.waitingForCallback.put(str, Boolean.TRUE);
                list = this.waitingForCallbackMap.get(messageObject.getDialogId() + "_" + messageObject.getId());
                if (list != null) {
                    HashMap<String, List<String>> map = this.waitingForCallbackMap;
                    String str2 = messageObject.getDialogId() + "_" + messageObject.getId();
                    ArrayList arrayList = new ArrayList();
                    map.put(str2, arrayList);
                    list2 = arrayList;
                } else {
                    list2 = list;
                }
                list2.add(str);
                final TLObject[] tLObjectArr = new TLObject[1];
                RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda113
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$sendCallback$39(str, list2, z2, messageObject, keyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr, inputCheckPasswordSRP, z, tLObject, tL_error);
                    }
                };
                if (!z2) {
                    getMessagesStorage().getBotCache(str, requestDelegate);
                    return;
                }
                if (z3) {
                    TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
                    tL_messages_requestUrlAuth.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
                    tL_messages_requestUrlAuth.msg_id = messageObject.getId();
                    tL_messages_requestUrlAuth.button_id = keyboardButton.button_id;
                    tL_messages_requestUrlAuth.flags |= 2;
                    tLObjectArr[0] = tL_messages_requestUrlAuth;
                    getConnectionsManager().sendRequest(tL_messages_requestUrlAuth, requestDelegate, 2);
                    return;
                }
                if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
                    if ((messageObject.messageOwner.media.flags & 4) == 0) {
                        TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
                        TLRPC.TL_inputInvoiceMessage tL_inputInvoiceMessage = new TLRPC.TL_inputInvoiceMessage();
                        tL_inputInvoiceMessage.msg_id = messageObject.getId();
                        tL_inputInvoiceMessage.peer = getMessagesController().getInputPeer(messageObject.messageOwner.peer_id);
                        tL_payments_getPaymentForm.invoice = tL_inputInvoiceMessage;
                        JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(null);
                        if (jSONObjectMakeThemeParams != null) {
                            TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                            tL_payments_getPaymentForm.theme_params = tL_dataJSON;
                            tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
                            tL_payments_getPaymentForm.flags |= 1;
                        }
                        tLObjectArr[0] = tL_payments_getPaymentForm;
                        getConnectionsManager().sendRequest(tL_payments_getPaymentForm, requestDelegate, 2);
                        return;
                    }
                    TLRPC.TL_payments_getPaymentReceipt tL_payments_getPaymentReceipt = new TLRPC.TL_payments_getPaymentReceipt();
                    tL_payments_getPaymentReceipt.msg_id = messageObject.messageOwner.media.receipt_msg_id;
                    tL_payments_getPaymentReceipt.peer = getMessagesController().getInputPeer(messageObject.messageOwner.peer_id);
                    tLObjectArr[0] = tL_payments_getPaymentReceipt;
                    getConnectionsManager().sendRequest(tL_payments_getPaymentReceipt, requestDelegate, 2);
                    return;
                }
                TLRPC.TL_messages_getBotCallbackAnswer tL_messages_getBotCallbackAnswer = new TLRPC.TL_messages_getBotCallbackAnswer();
                tL_messages_getBotCallbackAnswer.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
                tL_messages_getBotCallbackAnswer.msg_id = messageObject.getId();
                tL_messages_getBotCallbackAnswer.game = keyboardButton instanceof TLRPC.TL_keyboardButtonGame;
                if (keyboardButton.requires_password) {
                    tL_messages_getBotCallbackAnswer.password = inputCheckPasswordSRP != null ? inputCheckPasswordSRP : new TLRPC.TL_inputCheckPasswordEmpty();
                    tL_messages_getBotCallbackAnswer.flags |= 4;
                }
                byte[] bArr = keyboardButton.data;
                if (bArr != null) {
                    tL_messages_getBotCallbackAnswer.flags |= 1;
                    tL_messages_getBotCallbackAnswer.data = bArr;
                }
                getConnectionsManager().sendRequest(tL_messages_getBotCallbackAnswer, requestDelegate, 2);
                return;
            }
            i = 1;
        }
        z2 = false;
        final String str3 = messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(keyboardButton.data) + "_" + i;
        this.waitingForCallback.put(str3, Boolean.TRUE);
        list = this.waitingForCallbackMap.get(messageObject.getDialogId() + "_" + messageObject.getId());
        if (list != null) {
        }
        list2.add(str3);
        final TLObject[] tLObjectArr2 = new TLObject[1];
        RequestDelegate requestDelegate2 = new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda113
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendCallback$39(str3, list2, z2, messageObject, keyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr2, inputCheckPasswordSRP, z, tLObject, tL_error);
            }
        };
        if (!z2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$39(final String str, final List list, final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject[] tLObjectArr, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final boolean z2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendCallback$38(str, list, z, tLObject, messageObject, keyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr, tL_error, inputCheckPasswordSRP, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$sendCallback$38(final String str, final List list, boolean z, TLObject tLObject, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, TLObject[] tLObjectArr, TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final boolean z2) {
        int i;
        String name;
        ChatActivity chatActivity2;
        boolean z3;
        this.waitingForCallback.remove(str);
        list.remove(str);
        if (z && tLObject == null) {
            sendCallback(false, messageObject, keyboardButton, chatActivity);
            return;
        }
        if (tLObject != null) {
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
            }
            long fromChatId = messageObject.getFromChatId();
            long j = messageObject.messageOwner.via_bot_id;
            if (j != 0) {
                fromChatId = j;
            }
            if (fromChatId > 0) {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
                name = user != null ? ContactsController.formatName(user.first_name, user.last_name) : null;
            } else {
                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-fromChatId));
                if (chat != null) {
                    name = chat.title;
                }
            }
            if (name == null) {
                name = "bot";
            }
            if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth) {
                if (tLObject instanceof TLRPC.TL_urlAuthResultRequest) {
                    OAuthSheet.handle(false, this.currentAccount, (TLRPC.TL_messages_requestUrlAuth) tLObjectArr[0], (TLRPC.TL_urlAuthResultRequest) tLObject, keyboardButton.url, null, null, false, null);
                    return;
                } else if (tLObject instanceof TLRPC.TL_urlAuthResultAccepted) {
                    OAuthSheet.handle(false, this.currentAccount, (TLRPC.TL_messages_requestUrlAuth) tLObjectArr[0], (TLRPC.TL_urlAuthResultAccepted) tLObject, keyboardButton.url, null, null, false, null);
                    return;
                } else {
                    if (tLObject instanceof TLRPC.TL_urlAuthResultDefault) {
                        AlertsCreator.showOpenUrlAlert(chatActivity, keyboardButton.url, false, true);
                        return;
                    }
                    return;
                }
            }
            if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
                if (tLObject instanceof TLRPC.TL_payments_paymentFormStars) {
                    StarsController.getInstance(this.currentAccount).openPaymentForm(messageObject, ((TLRPC.TL_payments_getPaymentForm) tLObjectArr[0]).invoice, (TLRPC.TL_payments_paymentFormStars) tLObject, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda93
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendCallback$31(str, list);
                        }
                    }, new Utilities.Callback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda94
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            SendMessagesHelper.$r8$lambda$yvue_LxLXYIq4r5DvhQsljYeK2I((String) obj);
                        }
                    });
                    return;
                }
                if (tLObject instanceof TLRPC.PaymentForm) {
                    TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                    getMessagesController().putUsers(paymentForm.users, false);
                    chatActivity.presentFragment(new PaymentFormActivity(paymentForm, messageObject, chatActivity));
                    return;
                } else {
                    if (tLObject instanceof TLRPC.TL_payments_paymentReceiptStars) {
                        Context context = LaunchActivity.instance;
                        if (context == null) {
                            context = ApplicationLoader.applicationContext;
                        }
                        StarsIntroActivity.showTransactionSheet(context, false, this.currentAccount, (TLRPC.TL_payments_paymentReceiptStars) tLObject, (Theme.ResourcesProvider) null);
                        return;
                    }
                    if (tLObject instanceof TLRPC.PaymentReceipt) {
                        chatActivity.presentFragment(new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject));
                        return;
                    }
                    return;
                }
            }
            TLRPC.TL_messages_botCallbackAnswer tL_messages_botCallbackAnswer = (TLRPC.TL_messages_botCallbackAnswer) tLObject;
            if (!z && tL_messages_botCallbackAnswer.cache_time != 0 && !keyboardButton.requires_password) {
                getMessagesStorage().saveBotCache(str, tL_messages_botCallbackAnswer);
            }
            String str2 = tL_messages_botCallbackAnswer.message;
            if (str2 != null) {
                if (tL_messages_botCallbackAnswer.alert) {
                    if (chatActivity.getParentActivity() == null) {
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(chatActivity.getParentActivity());
                    builder.setTitle(name);
                    builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
                    builder.setMessage(tL_messages_botCallbackAnswer.message);
                    chatActivity.showDialog(builder.create());
                    return;
                }
                chatActivity.showAlert(name, str2);
                return;
            }
            if (tL_messages_botCallbackAnswer.url == null || chatActivity.getParentActivity() == null) {
                return;
            }
            TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(fromChatId));
            boolean z4 = user2 != null && user2.verified;
            if (keyboardButton instanceof TLRPC.TL_keyboardButtonGame) {
                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                TLRPC.TL_game tL_game = messageMedia instanceof TLRPC.TL_messageMediaGame ? messageMedia.game : null;
                if (tL_game == null) {
                    return;
                }
                String str3 = tL_messages_botCallbackAnswer.url;
                if (!z4) {
                    if (MessagesController.getNotificationsSettings(this.currentAccount).getBoolean("askgame_" + fromChatId, true)) {
                        chatActivity2 = chatActivity;
                        z3 = true;
                    } else {
                        chatActivity2 = chatActivity;
                        z3 = false;
                    }
                }
                chatActivity2.showOpenGameAlert(tL_game, messageObject, str3, z3, fromChatId);
                return;
            }
            AlertsCreator.showOpenUrlAlert(chatActivity, tL_messages_botCallbackAnswer.url, false, false);
            return;
        }
        if (tL_error == null || chatActivity.getParentActivity() == null) {
            return;
        }
        if ("PASSWORD_HASH_INVALID".equals(tL_error.text)) {
            if (inputCheckPasswordSRP == null) {
                AlertDialog.Builder builder2 = new AlertDialog.Builder(chatActivity.getParentActivity());
                builder2.setTitle(LocaleController.getString(C2888R.string.BotOwnershipTransfer));
                builder2.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferReadyAlertText", C2888R.string.BotOwnershipTransferReadyAlertText, new Object[0])));
                builder2.setPositiveButton(LocaleController.getString(C2888R.string.BotOwnershipTransferChangeOwner), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda95
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$sendCallback$34(z2, messageObject, keyboardButton, chatActivity, alertDialog, i2);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                chatActivity.showDialog(builder2.create());
                return;
            }
            return;
        }
        if ("PASSWORD_MISSING".equals(tL_error.text) || tL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tL_error.text.startsWith("SESSION_TOO_FRESH_")) {
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
            }
            AlertDialog.Builder builder3 = new AlertDialog.Builder(chatActivity.getParentActivity());
            builder3.setTitle(LocaleController.getString(C2888R.string.EditAdminTransferAlertTitle));
            LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
            linearLayout.setPadding(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(24.0f), 0);
            linearLayout.setOrientation(1);
            builder3.setView(linearLayout);
            TextView textView = new TextView(chatActivity.getParentActivity());
            int i2 = Theme.key_dialogTextBlack;
            textView.setTextColor(Theme.getColor(i2));
            textView.setTextSize(1, 16.0f);
            textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferAlertText", C2888R.string.BotOwnershipTransferAlertText, new Object[0])));
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout2 = new LinearLayout(chatActivity.getParentActivity());
            linearLayout2.setOrientation(0);
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(chatActivity.getParentActivity());
            imageView.setImageResource(C2888R.drawable.list_circle);
            imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(11.0f) : 0, AndroidUtilities.m1124dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(11.0f), 0);
            int color = Theme.getColor(i2);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
            TextView textView2 = new TextView(chatActivity.getParentActivity());
            textView2.setTextColor(Theme.getColor(i2));
            textView2.setTextSize(1, 16.0f);
            textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EditAdminTransferAlertText1)));
            if (LocaleController.isRTL) {
                linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
            } else {
                linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
                linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
            }
            LinearLayout linearLayout3 = new LinearLayout(chatActivity.getParentActivity());
            linearLayout3.setOrientation(0);
            linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            ImageView imageView2 = new ImageView(chatActivity.getParentActivity());
            imageView2.setImageResource(C2888R.drawable.list_circle);
            imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(11.0f) : 0, AndroidUtilities.m1124dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(11.0f), 0);
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), mode));
            TextView textView3 = new TextView(chatActivity.getParentActivity());
            textView3.setTextColor(Theme.getColor(i2));
            textView3.setTextSize(1, 16.0f);
            textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EditAdminTransferAlertText2)));
            if (LocaleController.isRTL) {
                linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                i = 5;
                linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
            } else {
                i = 5;
                linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
                linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
            }
            if ("PASSWORD_MISSING".equals(tL_error.text)) {
                builder3.setPositiveButton(LocaleController.getString(C2888R.string.EditAdminTransferSetPassword), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda96
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        chatActivity.presentFragment(new TwoStepVerificationSetupActivity(6, null));
                    }
                });
                builder3.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            } else {
                TextView textView4 = new TextView(chatActivity.getParentActivity());
                textView4.setTextColor(Theme.getColor(i2));
                textView4.setTextSize(1, 16.0f);
                if (!LocaleController.isRTL) {
                    i = 3;
                }
                textView4.setGravity(i | 48);
                textView4.setText(LocaleController.getString(C2888R.string.EditAdminTransferAlertText3));
                linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
                builder3.setNegativeButton(LocaleController.getString(C2888R.string.f1606OK), null);
            }
            chatActivity.showDialog(builder3.create());
            return;
        }
        if ("SRP_ID_INVALID".equals(tL_error.text)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda97
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$sendCallback$37(twoStepVerificationActivity, z2, messageObject, keyboardButton, chatActivity, tLObject2, tL_error2);
                }
            }, 8);
        } else if (twoStepVerificationActivity != null) {
            twoStepVerificationActivity.needHideProgress();
            twoStepVerificationActivity.finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$31(String str, List list) {
        this.waitingForCallback.remove(str);
        list.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$34(final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, AlertDialog alertDialog, int i) {
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(0, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                this.f$0.lambda$sendCallback$33(z, messageObject, keyboardButton, twoStepVerificationActivity, chatActivity, inputCheckPasswordSRP);
            }
        });
        chatActivity.presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$37(final TwoStepVerificationActivity twoStepVerificationActivity, final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda103
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendCallback$36(tL_error, tLObject, twoStepVerificationActivity, z, messageObject, keyboardButton, chatActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$36(TLRPC.TL_error tL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity, boolean z, MessageObject messageObject, TLRPC.KeyboardButton keyboardButton, ChatActivity chatActivity) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, password);
            TwoStepVerificationActivity.initPasswordNewAlgo(password);
            lambda$sendCallback$33(z, messageObject, keyboardButton, twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity, chatActivity);
        }
    }

    public boolean isSendingCallback(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton) {
        int i = 0;
        if (messageObject == null || keyboardButton == null) {
            return false;
        }
        if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth) {
            i = 3;
        } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonGame) {
            i = 1;
        } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
            i = 2;
        }
        return this.waitingForCallback.containsKey(messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(keyboardButton.data) + "_" + i);
    }

    public void sendGame(TLRPC.InputPeer inputPeer, TLRPC.TL_inputMediaGame tL_inputMediaGame, long j, final long j2) {
        NativeByteBuffer nativeByteBuffer;
        if (inputPeer == null || tL_inputMediaGame == null) {
            return;
        }
        TLRPC.TL_messages_sendMedia tL_messages_sendMedia = new TLRPC.TL_messages_sendMedia();
        tL_messages_sendMedia.peer = inputPeer;
        if (inputPeer instanceof TLRPC.TL_inputPeerChannel) {
            tL_messages_sendMedia.silent = MessagesController.getNotificationsSettings(this.currentAccount).getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + (-inputPeer.channel_id), false);
        } else if (inputPeer instanceof TLRPC.TL_inputPeerChat) {
            tL_messages_sendMedia.silent = MessagesController.getNotificationsSettings(this.currentAccount).getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + (-inputPeer.chat_id), false);
        } else {
            tL_messages_sendMedia.silent = MessagesController.getNotificationsSettings(this.currentAccount).getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + inputPeer.user_id, false);
        }
        tL_messages_sendMedia.random_id = j != 0 ? j : getNextRandomId();
        tL_messages_sendMedia.message = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_messages_sendMedia.media = tL_inputMediaGame;
        long sendAsPeerId = ChatObject.getSendAsPeerId(getMessagesController().getChat(Long.valueOf(inputPeer.chat_id)), getMessagesController().getChatFull(inputPeer.chat_id));
        if (sendAsPeerId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            tL_messages_sendMedia.send_as = getMessagesController().getInputPeer(sendAsPeerId);
        }
        long sendPaidMessagesStars = getMessagesController().getSendPaidMessagesStars(DialogObject.getPeerDialogId(inputPeer));
        if (sendPaidMessagesStars <= 0) {
            sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(getMessagesController().isUserContactBlocked(DialogObject.getPeerDialogId(inputPeer)));
        }
        if (sendPaidMessagesStars > 0) {
            tL_messages_sendMedia.flags |= TLObject.FLAG_21;
            tL_messages_sendMedia.allow_paid_stars = sendPaidMessagesStars;
        }
        if (j2 == 0) {
            NativeByteBuffer nativeByteBuffer2 = null;
            try {
                nativeByteBuffer = new NativeByteBuffer(inputPeer.getObjectSize() + tL_inputMediaGame.getObjectSize() + 12);
            } catch (Exception e) {
                e = e;
            }
            try {
                nativeByteBuffer.writeInt32(3);
                nativeByteBuffer.writeInt64(j);
                inputPeer.serializeToStream(nativeByteBuffer);
                tL_inputMediaGame.serializeToStream(nativeByteBuffer);
            } catch (Exception e2) {
                e = e2;
                nativeByteBuffer2 = nativeByteBuffer;
                FileLog.m1136e(e);
                nativeByteBuffer = nativeByteBuffer2;
            }
            j2 = getMessagesStorage().createPendingTask(nativeByteBuffer);
        }
        getConnectionsManager().sendRequest(tL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda105
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendGame$40(j2, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendGame$40(long j, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
        if (j != 0) {
            getMessagesStorage().removePendingTask(j);
        }
    }

    /* JADX WARN: Type update failed for variable: r1v0 ??, new type: org.telegram.messenger.SendMessagesHelper
    jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 103361. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyInvokeTypes(TypeUpdate.java:399)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.invokeListener(TypeUpdate.java:364)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
     */
    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public void sendMessage(org.telegram.messenger.SendMessagesHelper.SendMessageParams r99) {
        /*
            Method dump skipped, instruction units count: 10336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendMessage(org.telegram.messenger.SendMessagesHelper$SendMessageParams):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$41(SendMessageParams sendMessageParams, Long l) {
        sendMessageParams.payStars = l.longValue();
        sendMessage(sendMessageParams);
    }

    private void performSendDelayedMessage(DelayedMessage delayedMessage) {
        performSendDelayedMessage(delayedMessage, -1);
    }

    private TLRPC.PhotoSize getThumbForSecretChat(ArrayList<TLRPC.PhotoSize> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PhotoSize photoSize = arrayList.get(i);
                if (photoSize != null && !(photoSize instanceof TLRPC.TL_photoPathSize) && !(photoSize instanceof TLRPC.TL_photoSizeEmpty) && photoSize.location != null) {
                    if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                        return photoSize;
                    }
                    TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
                    tL_photoSize_layer127.type = photoSize.type;
                    tL_photoSize_layer127.f1694w = photoSize.f1694w;
                    tL_photoSize_layer127.f1693h = photoSize.f1693h;
                    tL_photoSize_layer127.size = photoSize.size;
                    byte[] bArr = photoSize.bytes;
                    tL_photoSize_layer127.bytes = bArr;
                    if (bArr == null) {
                        tL_photoSize_layer127.bytes = new byte[0];
                    }
                    TLRPC.TL_fileLocation_layer82 tL_fileLocation_layer82 = new TLRPC.TL_fileLocation_layer82();
                    tL_photoSize_layer127.location = tL_fileLocation_layer82;
                    TLRPC.FileLocation fileLocation = photoSize.location;
                    tL_fileLocation_layer82.dc_id = fileLocation.dc_id;
                    tL_fileLocation_layer82.volume_id = fileLocation.volume_id;
                    tL_fileLocation_layer82.local_id = fileLocation.local_id;
                    tL_fileLocation_layer82.secret = fileLocation.secret;
                    return tL_photoSize_layer127;
                }
            }
        }
        return null;
    }

    private void performSendDelayedMessage(final DelayedMessage delayedMessage, int i) {
        boolean z;
        Object obj;
        TLRPC.InputFile inputFile;
        boolean z2;
        String str;
        boolean z3;
        TLRPC.InputMedia inputMedia;
        TLRPC.InputPeer inputPeer;
        TLRPC.InputMedia inputMedia2;
        TLRPC.PhotoSize photoSize;
        int i2;
        final TLRPC.InputMedia inputMedia3;
        TLRPC.InputPeer inputPeer2;
        String str2;
        VideoEditedInfo videoEditedInfo;
        TLRPC.InputMedia inputMedia4;
        TLRPC.PhotoSize photoSize2;
        int i3 = delayedMessage.type;
        if (i3 == 0) {
            String str3 = delayedMessage.httpLocation;
            if (str3 != null) {
                putToDelayedMessages(str3, delayedMessage);
                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "file", this.currentAccount);
                return;
            }
            if (delayedMessage.sendRequest != null) {
                String string = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                putToDelayedMessages(string, delayedMessage);
                getFileLoader().uploadFile(string, false, true, 16777216);
                putToUploadingMessages(delayedMessage.obj);
                return;
            }
            String string2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
            if (delayedMessage.sendEncryptedRequest != null && (photoSize2 = delayedMessage.photoSize) != null && photoSize2.location.dc_id != 0) {
                File file = new File(string2);
                if (!file.exists()) {
                    string2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize, true).toString();
                    file = new File(string2);
                }
                if (!file.exists()) {
                    putToDelayedMessages(FileLoader.getAttachFileName(delayedMessage.photoSize), delayedMessage);
                    getFileLoader().loadFile(ImageLocation.getForObject(delayedMessage.photoSize, delayedMessage.locationParent), delayedMessage.parentObject, "jpg", 3, 0);
                    return;
                }
            }
            putToDelayedMessages(string2, delayedMessage);
            getFileLoader().uploadFile(string2, true, true, 16777216);
            putToUploadingMessages(delayedMessage.obj);
            return;
        }
        if (i3 == 1) {
            VideoEditedInfo videoEditedInfo2 = delayedMessage.videoEditedInfo;
            if (videoEditedInfo2 != null && videoEditedInfo2.needConvert() && delayedMessage.performMediaUpload) {
                MessageObject messageObject = delayedMessage.obj;
                String string3 = messageObject.messageOwner.attachPath;
                TLRPC.Document document = messageObject.getDocument();
                if (string3 == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(FileLoader.getDirectory(4));
                    sb.append("/");
                    sb.append(document.f1668id);
                    sb.append(".");
                    sb.append(delayedMessage.videoEditedInfo.isSticker ? "webm" : "mp4");
                    string3 = sb.toString();
                }
                putToDelayedMessages(string3, delayedMessage);
                if (!delayedMessage.videoEditedInfo.alreadyScheduledConverting) {
                    MediaController.getInstance().scheduleVideoConvert(delayedMessage.obj);
                }
                putToUploadingMessages(delayedMessage.obj);
                return;
            }
            VideoEditedInfo videoEditedInfo3 = delayedMessage.videoEditedInfo;
            if (videoEditedInfo3 != null) {
                TLRPC.InputFile inputFile2 = videoEditedInfo3.file;
                if (inputFile2 != null) {
                    i2 = 4;
                    TLObject tLObject = delayedMessage.sendRequest;
                    if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
                        inputMedia4 = ((TLRPC.TL_messages_sendMedia) tLObject).media;
                    } else {
                        inputMedia4 = ((TLRPC.TL_messages_editMessage) tLObject).media;
                    }
                    inputMedia4.file = inputFile2;
                    videoEditedInfo3.file = null;
                } else {
                    i2 = 4;
                    if (videoEditedInfo3.encryptedFile != null) {
                        TLRPC.TL_decryptedMessage tL_decryptedMessage = (TLRPC.TL_decryptedMessage) delayedMessage.sendEncryptedRequest;
                        TLRPC.DecryptedMessageMedia decryptedMessageMedia = tL_decryptedMessage.media;
                        decryptedMessageMedia.size = videoEditedInfo3.estimatedSize;
                        decryptedMessageMedia.key = videoEditedInfo3.key;
                        decryptedMessageMedia.f1664iv = videoEditedInfo3.f1620iv;
                        SecretChatHelper secretChatHelper = getSecretChatHelper();
                        MessageObject messageObject2 = delayedMessage.obj;
                        secretChatHelper.performSendEncryptedRequest(tL_decryptedMessage, messageObject2.messageOwner, delayedMessage.encryptedChat, delayedMessage.videoEditedInfo.encryptedFile, delayedMessage.originalPath, messageObject2);
                        delayedMessage.videoEditedInfo.encryptedFile = null;
                        return;
                    }
                }
            } else {
                i2 = 4;
            }
            TLObject tLObject2 = delayedMessage.sendRequest;
            if (tLObject2 != null) {
                if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
                    TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject2;
                    inputMedia3 = tL_messages_sendMedia.media;
                    inputPeer2 = tL_messages_sendMedia.peer;
                } else {
                    TLRPC.TL_messages_editMessage tL_messages_editMessage = (TLRPC.TL_messages_editMessage) tLObject2;
                    inputMedia3 = tL_messages_editMessage.media;
                    inputPeer2 = tL_messages_editMessage.peer;
                }
                if (inputMedia3 instanceof TLRPC.TL_inputMediaPaidMedia) {
                    TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia3;
                    if (!tL_inputMediaPaidMedia.extended_media.isEmpty()) {
                        inputMedia3 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(0);
                    }
                }
                if (inputMedia3.file == null && !(inputMedia3 instanceof TLRPC.TL_inputMediaDocument) && delayedMessage.performMediaUpload) {
                    MessageObject messageObject3 = delayedMessage.obj;
                    String str4 = messageObject3.messageOwner.attachPath;
                    TLRPC.Document document2 = messageObject3.getDocument();
                    if (str4 == null) {
                        str4 = FileLoader.getDirectory(i2) + "/" + document2.f1668id + ".mp4";
                    }
                    String str5 = str4;
                    putToDelayedMessages(str5, delayedMessage);
                    VideoEditedInfo videoEditedInfo4 = delayedMessage.obj.videoEditedInfo;
                    if (videoEditedInfo4 == null || !videoEditedInfo4.notReadyYet) {
                        if (videoEditedInfo4 != null && videoEditedInfo4.needConvert()) {
                            getFileLoader().uploadFile(str5, false, false, document2.size, 33554432, false);
                        } else {
                            getFileLoader().uploadFile(str5, false, false, 33554432);
                        }
                    }
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                }
                TLRPC.InputPhoto inputPhoto = inputMedia3.video_cover;
                if (inputPhoto == null && delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null && delayedMessage.performCoverUpload) {
                    String str6 = FileLoader.getDirectory(i2) + "/" + delayedMessage.coverPhotoSize.location.volume_id + "_" + delayedMessage.coverPhotoSize.location.local_id + ".jpg";
                    putToDelayedMessages(str6, delayedMessage);
                    getFileLoader().uploadFile(str6, false, true, 16777216);
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                }
                if (inputPhoto == null && delayedMessage.coverFile != null && delayedMessage.performCoverUpload) {
                    TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
                    tL_messages_uploadMedia.peer = inputPeer2;
                    TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                    tL_inputMediaUploadedPhoto.file = delayedMessage.coverFile;
                    tL_messages_uploadMedia.media = tL_inputMediaUploadedPhoto;
                    getConnectionsManager().sendRequest(tL_messages_uploadMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda81
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject3, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$performSendDelayedMessage$43(inputMedia3, delayedMessage, tLObject3, tL_error);
                        }
                    });
                    return;
                }
                MessageObject messageObject4 = delayedMessage.obj;
                if (messageObject4 != null && (videoEditedInfo = messageObject4.videoEditedInfo) != null && videoEditedInfo.isSticker) {
                    str2 = "webp";
                } else {
                    str2 = "jpg";
                }
                String str7 = FileLoader.getDirectory(i2) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + "." + str2;
                putToDelayedMessages(str7, delayedMessage);
                getFileLoader().uploadFile(str7, false, true, 16777216);
                putToUploadingMessages(delayedMessage.obj);
                return;
            }
            MessageObject messageObject5 = delayedMessage.obj;
            String str8 = messageObject5.messageOwner.attachPath;
            TLRPC.Document document3 = messageObject5.getDocument();
            if (str8 == null) {
                str8 = FileLoader.getDirectory(i2) + "/" + document3.f1668id + ".mp4";
            }
            if (delayedMessage.sendEncryptedRequest != null && document3.dc_id != 0) {
                File file2 = new File(str8);
                if (!file2.exists() && (file2 = getFileLoader().getPathToMessage(delayedMessage.obj.messageOwner)) != null && file2.exists()) {
                    TLRPC.Message message = delayedMessage.obj.messageOwner;
                    String absolutePath = file2.getAbsolutePath();
                    message.attachPath = absolutePath;
                    delayedMessage.obj.attachPathExists = true;
                    str8 = absolutePath;
                }
                if ((file2 == null || (!file2.exists() && delayedMessage.obj.getDocument() != null)) && (file2 = getFileLoader().getPathToAttach(delayedMessage.obj.getDocument(), false)) != null && file2.exists()) {
                    TLRPC.Message message2 = delayedMessage.obj.messageOwner;
                    String absolutePath2 = file2.getAbsolutePath();
                    message2.attachPath = absolutePath2;
                    delayedMessage.obj.attachPathExists = true;
                    str8 = absolutePath2;
                }
                if (file2 == null || !file2.exists()) {
                    putToDelayedMessages(FileLoader.getAttachFileName(document3), delayedMessage);
                    getFileLoader().loadFile(document3, delayedMessage.parentObject, 3, 0);
                    return;
                }
            }
            putToDelayedMessages(str8, delayedMessage);
            VideoEditedInfo videoEditedInfo5 = delayedMessage.obj.videoEditedInfo;
            if (videoEditedInfo5 == null || !videoEditedInfo5.notReadyYet) {
                if (videoEditedInfo5 != null && videoEditedInfo5.needConvert()) {
                    getFileLoader().uploadFile(str8, true, false, document3.size, 33554432, false);
                } else {
                    getFileLoader().uploadFile(str8, true, false, 33554432);
                }
            }
            putToUploadingMessages(delayedMessage.obj);
            return;
        }
        if (i3 == 2) {
            String str9 = delayedMessage.httpLocation;
            if (str9 != null) {
                putToDelayedMessages(str9, delayedMessage);
                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "gif", this.currentAccount);
                return;
            }
            TLObject tLObject3 = delayedMessage.sendRequest;
            if (tLObject3 != null) {
                if (tLObject3 instanceof TLRPC.TL_messages_sendMedia) {
                    inputMedia2 = ((TLRPC.TL_messages_sendMedia) tLObject3).media;
                } else {
                    inputMedia2 = ((TLRPC.TL_messages_editMessage) tLObject3).media;
                }
                if (inputMedia2.file == null) {
                    String str10 = delayedMessage.obj.messageOwner.attachPath;
                    putToDelayedMessages(str10, delayedMessage);
                    getFileLoader().uploadFile(str10, delayedMessage.sendRequest == null, false, 67108864);
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                }
                if (inputMedia2.thumb != null || (photoSize = delayedMessage.photoSize) == null || (photoSize instanceof TLRPC.TL_photoStrippedSize)) {
                    return;
                }
                String str11 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                putToDelayedMessages(str11, delayedMessage);
                getFileLoader().uploadFile(str11, false, true, 16777216);
                putToUploadingMessages(delayedMessage.obj);
                return;
            }
            MessageObject messageObject6 = delayedMessage.obj;
            String str12 = messageObject6.messageOwner.attachPath;
            TLRPC.Document document4 = messageObject6.getDocument();
            if (delayedMessage.sendEncryptedRequest != null && document4.dc_id != 0) {
                File file3 = new File(str12);
                if (!file3.exists() && (file3 = getFileLoader().getPathToMessage(delayedMessage.obj.messageOwner)) != null && file3.exists()) {
                    TLRPC.Message message3 = delayedMessage.obj.messageOwner;
                    String absolutePath3 = file3.getAbsolutePath();
                    message3.attachPath = absolutePath3;
                    delayedMessage.obj.attachPathExists = true;
                    str12 = absolutePath3;
                }
                if ((file3 == null || (!file3.exists() && delayedMessage.obj.getDocument() != null)) && (file3 = getFileLoader().getPathToAttach(delayedMessage.obj.getDocument(), false)) != null && file3.exists()) {
                    TLRPC.Message message4 = delayedMessage.obj.messageOwner;
                    String absolutePath4 = file3.getAbsolutePath();
                    message4.attachPath = absolutePath4;
                    delayedMessage.obj.attachPathExists = true;
                    str12 = absolutePath4;
                }
                if (file3 == null || !file3.exists()) {
                    putToDelayedMessages(FileLoader.getAttachFileName(document4), delayedMessage);
                    getFileLoader().loadFile(document4, delayedMessage.parentObject, 3, 0);
                    return;
                }
            }
            putToDelayedMessages(str12, delayedMessage);
            getFileLoader().uploadFile(str12, true, false, 67108864);
            putToUploadingMessages(delayedMessage.obj);
            return;
        }
        if (i3 == 3) {
            String str13 = delayedMessage.obj.messageOwner.attachPath;
            putToDelayedMessages(str13, delayedMessage);
            getFileLoader().uploadFile(str13, delayedMessage.sendRequest == null, true, ConnectionsManager.FileTypeAudio);
            putToUploadingMessages(delayedMessage.obj);
            return;
        }
        if (i3 != 4) {
            if (i3 == 5) {
                final String str14 = "stickerset_" + delayedMessage.obj.getId();
                TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
                tL_messages_getStickerSet.stickerset = (TLRPC.InputStickerSet) delayedMessage.parentObject;
                getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda83
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject4, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$performSendDelayedMessage$47(delayedMessage, str14, tLObject4, tL_error);
                    }
                });
                putToDelayedMessages(str14, delayedMessage);
                return;
            }
            return;
        }
        boolean z4 = i < 0;
        if (delayedMessage.performMediaUpload || delayedMessage.performCoverUpload) {
            int size = i < 0 ? delayedMessage.messageObjects.size() - 1 : i;
            final MessageObject messageObject7 = delayedMessage.messageObjects.get(size);
            TLRPC.Document document5 = messageObject7.getDocument();
            if (document5 == null && (MessageObject.getMedia(messageObject7) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject7);
                TLRPC.MessageExtendedMedia messageExtendedMedia = size >= tL_messageMediaPaidMedia.extended_media.size() ? null : tL_messageMediaPaidMedia.extended_media.get(size);
                TLRPC.MessageMedia messageMedia = messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia ? ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media : null;
                document5 = messageMedia == null ? null : messageMedia.document;
            }
            if (document5 != null) {
                VideoEditedInfo videoEditedInfo6 = delayedMessage.videoEditedInfo;
                if (videoEditedInfo6 != null && videoEditedInfo6.needConvert() && delayedMessage.performMediaUpload) {
                    String str15 = messageObject7.messageOwner.attachPath;
                    if (str15 == null) {
                        str15 = FileLoader.getDirectory(4) + "/" + document5.f1668id + ".mp4";
                    }
                    putToDelayedMessages(str15, delayedMessage);
                    delayedMessage.extraHashMap.put(messageObject7, str15);
                    delayedMessage.extraHashMap.put(str15 + "_i", messageObject7);
                    TLRPC.PhotoSize photoSize3 = delayedMessage.photoSize;
                    if (photoSize3 != null && photoSize3.location != null) {
                        delayedMessage.extraHashMap.put(str15 + "_t", delayedMessage.photoSize);
                    }
                    TLRPC.PhotoSize photoSize4 = delayedMessage.coverPhotoSize;
                    if (photoSize4 != null && photoSize4.location != null) {
                        delayedMessage.extraHashMap.put(str15 + "_ct", delayedMessage.coverPhotoSize);
                    }
                    if (!delayedMessage.videoEditedInfo.alreadyScheduledConverting) {
                        MediaController.getInstance().scheduleVideoConvert(messageObject7);
                    }
                    delayedMessage.obj = messageObject7;
                    putToUploadingMessages(messageObject7);
                    z = z4;
                } else {
                    String string4 = messageObject7.messageOwner.attachPath;
                    if (string4 == null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(FileLoader.getDirectory(4));
                        sb2.append("/");
                        str = "_ct";
                        z3 = z4;
                        sb2.append(document5.f1668id);
                        sb2.append(".mp4");
                        string4 = sb2.toString();
                    } else {
                        str = "_ct";
                        z3 = z4;
                    }
                    TLObject tLObject4 = delayedMessage.sendRequest;
                    if (tLObject4 != null) {
                        if (tLObject4 instanceof TLRPC.TL_messages_sendMultiMedia) {
                            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject4;
                            inputPeer = tL_messages_sendMultiMedia.peer;
                            inputMedia = ((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(size)).media;
                        } else if (tLObject4 instanceof TLRPC.TL_messages_sendMedia) {
                            TLRPC.TL_messages_sendMedia tL_messages_sendMedia2 = (TLRPC.TL_messages_sendMedia) tLObject4;
                            inputPeer = tL_messages_sendMedia2.peer;
                            TLRPC.InputMedia inputMedia5 = tL_messages_sendMedia2.media;
                            inputMedia = inputMedia5 instanceof TLRPC.TL_inputMediaPaidMedia ? (TLRPC.InputMedia) ((TLRPC.TL_inputMediaPaidMedia) inputMedia5).extended_media.get(size) : null;
                        } else {
                            inputMedia = null;
                            inputPeer = null;
                        }
                        if (inputMedia != null && inputMedia.file == null && !(inputMedia instanceof TLRPC.TL_inputMediaDocument) && delayedMessage.performMediaUpload) {
                            putToDelayedMessages(string4, delayedMessage);
                            delayedMessage.extraHashMap.put(messageObject7, string4);
                            delayedMessage.extraHashMap.put(string4, inputMedia);
                            delayedMessage.extraHashMap.put(string4 + "_i", messageObject7);
                            TLRPC.PhotoSize photoSize5 = delayedMessage.photoSize;
                            if (photoSize5 != null && photoSize5.location != null) {
                                delayedMessage.extraHashMap.put(string4 + "_t", delayedMessage.photoSize);
                            }
                            TLRPC.PhotoSize photoSize6 = delayedMessage.coverPhotoSize;
                            if (photoSize6 != null && photoSize6.location != null) {
                                String str16 = FileLoader.getDirectory(4) + "/" + delayedMessage.coverPhotoSize.location.volume_id + "_" + delayedMessage.coverPhotoSize.location.local_id + ".jpg";
                                delayedMessage.extraHashMap.put(string4 + str, delayedMessage.coverPhotoSize);
                                delayedMessage.extraHashMap.put(str16 + "_doc", string4);
                            }
                            VideoEditedInfo videoEditedInfo7 = messageObject7.videoEditedInfo;
                            if (videoEditedInfo7 != null && videoEditedInfo7.needConvert()) {
                                getFileLoader().uploadFile(string4, false, false, document5.size, 33554432, false);
                            } else {
                                getFileLoader().uploadFile(string4, false, false, 33554432);
                            }
                            putToUploadingMessages(messageObject7);
                            z = z3;
                        } else {
                            String str17 = str;
                            final String str18 = string4;
                            TLRPC.PhotoSize photoSize7 = delayedMessage.coverPhotoSize;
                            if (photoSize7 != null && delayedMessage.coverFile == null && inputMedia.video_cover == null) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(FileLoader.getDirectory(4));
                                sb3.append("/");
                                z = z3;
                                sb3.append(delayedMessage.coverPhotoSize.location.volume_id);
                                sb3.append("_");
                                sb3.append(delayedMessage.coverPhotoSize.location.local_id);
                                sb3.append(".jpg");
                                String string5 = sb3.toString();
                                putToDelayedMessages(string5, delayedMessage);
                                TLRPC.PhotoSize photoSize8 = delayedMessage.coverPhotoSize;
                                if (photoSize8 != null && photoSize8.location != null) {
                                    String str19 = FileLoader.getDirectory(4) + "/" + delayedMessage.coverPhotoSize.location.volume_id + "_" + delayedMessage.coverPhotoSize.location.local_id + ".jpg";
                                    delayedMessage.extraHashMap.put(str18 + str17, delayedMessage.coverPhotoSize);
                                    delayedMessage.extraHashMap.put(str19 + "_doc", str18);
                                }
                                delayedMessage.extraHashMap.put(string5 + "_o", str18);
                                delayedMessage.extraHashMap.put(str18 + "_i", messageObject7);
                                delayedMessage.extraHashMap.put(messageObject7, string5);
                                delayedMessage.extraHashMap.put(string5, inputMedia);
                                getFileLoader().uploadFile(string5, false, true, 16777216);
                                putToUploadingMessages(messageObject7);
                            } else {
                                z = z3;
                                if (photoSize7 != null && delayedMessage.coverFile != null && inputMedia != null && inputMedia.video_cover == null) {
                                    TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia2 = new TLRPC.TL_messages_uploadMedia();
                                    tL_messages_uploadMedia2.peer = inputPeer;
                                    TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto2 = new TLRPC.TL_inputMediaUploadedPhoto();
                                    tL_inputMediaUploadedPhoto2.file = delayedMessage.coverFile;
                                    tL_messages_uploadMedia2.media = tL_inputMediaUploadedPhoto2;
                                    final TLRPC.InputMedia inputMedia6 = inputMedia;
                                    getConnectionsManager().sendRequest(tL_messages_uploadMedia2, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda82
                                        @Override // org.telegram.tgnet.RequestDelegate
                                        public final void run(TLObject tLObject5, TLRPC.TL_error tL_error) {
                                            this.f$0.lambda$performSendDelayedMessage$45(inputMedia6, delayedMessage, str18, messageObject7, tLObject5, tL_error);
                                        }
                                    });
                                } else if (delayedMessage.photoSize != null) {
                                    String str20 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                                    putToDelayedMessages(str20, delayedMessage);
                                    delayedMessage.extraHashMap.put(str20 + "_o", str18);
                                    delayedMessage.extraHashMap.put(messageObject7, str20);
                                    delayedMessage.extraHashMap.put(str20, inputMedia);
                                    getFileLoader().uploadFile(str20, false, true, 16777216);
                                    putToUploadingMessages(messageObject7);
                                }
                            }
                        }
                    } else {
                        z = z3;
                        TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                        putToDelayedMessages(string4, delayedMessage);
                        delayedMessage.extraHashMap.put(messageObject7, string4);
                        delayedMessage.extraHashMap.put(string4, tL_messages_sendEncryptedMultiMedia.files.get(size));
                        delayedMessage.extraHashMap.put(string4 + "_i", messageObject7);
                        TLRPC.PhotoSize photoSize9 = delayedMessage.photoSize;
                        if (photoSize9 != null && photoSize9.location != null) {
                            delayedMessage.extraHashMap.put(string4 + "_t", delayedMessage.photoSize);
                        }
                        VideoEditedInfo videoEditedInfo8 = messageObject7.videoEditedInfo;
                        if (videoEditedInfo8 != null && videoEditedInfo8.needConvert()) {
                            getFileLoader().uploadFile(string4, true, false, document5.size, 33554432, false);
                        } else {
                            getFileLoader().uploadFile(string4, true, false, 33554432);
                        }
                        putToUploadingMessages(messageObject7);
                    }
                }
                inputFile = null;
                delayedMessage.videoEditedInfo = null;
                delayedMessage.photoSize = null;
                delayedMessage.coverPhotoSize = null;
            } else {
                z = z4;
                String str21 = delayedMessage.httpLocation;
                if (str21 != null) {
                    putToDelayedMessages(str21, delayedMessage);
                    delayedMessage.extraHashMap.put(messageObject7, delayedMessage.httpLocation);
                    delayedMessage.extraHashMap.put(delayedMessage.httpLocation, messageObject7);
                    ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "file", this.currentAccount);
                    inputFile = null;
                    delayedMessage.httpLocation = null;
                } else {
                    TLObject tLObject5 = delayedMessage.sendRequest;
                    if (tLObject5 instanceof TLRPC.TL_messages_sendMultiMedia) {
                        obj = ((TLRPC.TL_inputSingleMedia) ((TLRPC.TL_messages_sendMultiMedia) tLObject5).multi_media.get(size)).media;
                    } else if ((tLObject5 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) tLObject5).media instanceof TLRPC.TL_inputMediaPaidMedia)) {
                        obj = (TLObject) ((TLRPC.TL_inputMediaPaidMedia) ((TLRPC.TL_messages_sendMedia) tLObject5).media).extended_media.get(size);
                    } else {
                        obj = (TLObject) ((TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest).files.get(size);
                    }
                    String string6 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                    putToDelayedMessages(string6, delayedMessage);
                    delayedMessage.extraHashMap.put(string6, obj);
                    delayedMessage.extraHashMap.put(messageObject7, string6);
                    z = true;
                    getFileLoader().uploadFile(string6, delayedMessage.sendEncryptedRequest != null, true, 16777216);
                    putToUploadingMessages(messageObject7);
                    inputFile = null;
                    delayedMessage.photoSize = null;
                    delayedMessage.coverFile = inputFile;
                    delayedMessage.performMediaUpload = false;
                    delayedMessage.performCoverUpload = false;
                    z2 = z;
                }
            }
            z = true;
            delayedMessage.coverFile = inputFile;
            delayedMessage.performMediaUpload = false;
            delayedMessage.performCoverUpload = false;
            z2 = z;
        } else {
            if (!delayedMessage.messageObjects.isEmpty()) {
                ArrayList<MessageObject> arrayList = delayedMessage.messageObjects;
                putToSendingMessages(arrayList.get(arrayList.size() - 1).messageOwner, delayedMessage.finalGroupMessage != 0);
            }
            z2 = z4;
        }
        sendReadyToSendGroup(delayedMessage, z2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$43(final TLRPC.InputMedia inputMedia, final DelayedMessage delayedMessage, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda101
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendDelayedMessage$42(tLObject, inputMedia, delayedMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$42(TLObject tLObject, TLRPC.InputMedia inputMedia, DelayedMessage delayedMessage) {
        TLRPC.PhotoSize photoSize;
        MessageObject messageObject;
        VideoEditedInfo videoEditedInfo;
        if (tLObject instanceof TLRPC.TL_messageMediaPhoto) {
            TLRPC.Photo photo = ((TLRPC.TL_messageMediaPhoto) tLObject).photo;
            TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
            tL_inputPhoto.f1684id = photo.f1692id;
            tL_inputPhoto.access_hash = photo.access_hash;
            tL_inputPhoto.file_reference = photo.file_reference;
            if (inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument) {
                inputMedia.flags |= 64;
                inputMedia.video_cover = tL_inputPhoto;
            } else if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                inputMedia.flags |= 8;
                inputMedia.video_cover = tL_inputPhoto;
            }
            TLRPC.InputMedia inputMedia2 = delayedMessage.inputUploadMedia;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
                inputMedia2.flags |= 64;
                inputMedia2.video_cover = tL_inputPhoto;
            }
            if (delayedMessage.performMediaUpload && inputMedia.thumb == null && (photoSize = delayedMessage.photoSize) != null && photoSize.location != null && ((messageObject = delayedMessage.obj) == null || (videoEditedInfo = messageObject.videoEditedInfo) == null || !videoEditedInfo.isSticker)) {
                performSendDelayedMessage(delayedMessage);
                return;
            } else {
                performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, delayedMessage, delayedMessage.parentObject, null, delayedMessage.scheduled);
                return;
            }
        }
        delayedMessage.markAsError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$45(final TLRPC.InputMedia inputMedia, final DelayedMessage delayedMessage, final String str, final MessageObject messageObject, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendDelayedMessage$44(tLObject, inputMedia, delayedMessage, str, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$44(TLObject tLObject, TLRPC.InputMedia inputMedia, DelayedMessage delayedMessage, String str, MessageObject messageObject) {
        if (tLObject instanceof TLRPC.TL_messageMediaPhoto) {
            TLRPC.Photo photo = ((TLRPC.TL_messageMediaPhoto) tLObject).photo;
            TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
            tL_inputPhoto.f1684id = photo.f1692id;
            tL_inputPhoto.access_hash = photo.access_hash;
            tL_inputPhoto.file_reference = photo.file_reference;
            if (inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument) {
                inputMedia.flags |= 64;
                inputMedia.video_cover = tL_inputPhoto;
            } else if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                inputMedia.flags |= 8;
                inputMedia.video_cover = tL_inputPhoto;
            }
            TLRPC.PhotoSize photoSize = null;
            delayedMessage.coverFile = null;
            delayedMessage.coverPhotoSize = null;
            HashMap<Object, Object> map = delayedMessage.extraHashMap;
            if (map != null) {
                map.remove(str + "_ct");
            }
            int iIndexOf = delayedMessage.messageObjects.indexOf(messageObject);
            ArrayList<TLRPC.InputMedia> arrayList = delayedMessage.inputMedias;
            if (arrayList != null && iIndexOf >= 0 && iIndexOf < arrayList.size()) {
                TLRPC.InputMedia inputMedia2 = delayedMessage.inputMedias.get(iIndexOf);
                if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
                    inputMedia2.flags |= 64;
                    inputMedia2.video_cover = tL_inputPhoto;
                }
            }
            HashMap<Object, Object> map2 = delayedMessage.extraHashMap;
            if (map2 != null) {
                if (map2.containsKey(str + "_t")) {
                    photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str + "_t");
                }
            }
            delayedMessage.photoSize = photoSize;
            if (inputMedia.thumb == null && photoSize != null && photoSize.location != null) {
                delayedMessage.performMediaUpload = true;
                performSendDelayedMessage(delayedMessage, iIndexOf);
                return;
            } else {
                sendReadyToSendGroup(delayedMessage, false, true);
                return;
            }
        }
        delayedMessage.markAsError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$47(final DelayedMessage delayedMessage, final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendDelayedMessage$46(tLObject, delayedMessage, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$46(TLObject tLObject, DelayedMessage delayedMessage, String str) {
        boolean z;
        if (tLObject != null) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            getMediaDataController().storeTempStickerSet(tL_messages_stickerSet);
            TLRPC.TL_documentAttributeSticker_layer55 tL_documentAttributeSticker_layer55 = (TLRPC.TL_documentAttributeSticker_layer55) delayedMessage.locationParent;
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            tL_documentAttributeSticker_layer55.stickerset = tL_inputStickerSetShortName;
            tL_inputStickerSetShortName.short_name = tL_messages_stickerSet.set.short_name;
            z = true;
        } else {
            z = false;
        }
        ArrayList<DelayedMessage> arrayListRemove = this.delayedMessages.remove(str);
        if (arrayListRemove == null || arrayListRemove.isEmpty()) {
            return;
        }
        if (z) {
            getMessagesStorage().replaceMessageIfExists(arrayListRemove.get(0).obj.messageOwner, null, null, false);
        }
        SecretChatHelper secretChatHelper = getSecretChatHelper();
        TLRPC.DecryptedMessage decryptedMessage = (TLRPC.DecryptedMessage) delayedMessage.sendEncryptedRequest;
        MessageObject messageObject = delayedMessage.obj;
        secretChatHelper.performSendEncryptedRequest(decryptedMessage, messageObject.messageOwner, delayedMessage.encryptedChat, null, null, messageObject);
    }

    private void uploadMultiMedia(final DelayedMessage delayedMessage, final TLRPC.InputMedia inputMedia, TLRPC.InputEncryptedFile inputEncryptedFile, String str) {
        if (inputMedia == null) {
            if (inputEncryptedFile != null) {
                TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                int i = 0;
                while (true) {
                    if (i >= tL_messages_sendEncryptedMultiMedia.files.size()) {
                        break;
                    }
                    if (tL_messages_sendEncryptedMultiMedia.files.get(i) == inputEncryptedFile) {
                        putToSendingMessages(delayedMessage.messages.get(i), delayedMessage.scheduled);
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                        break;
                    }
                    i++;
                }
                sendReadyToSendGroup(delayedMessage, false, true);
                return;
            }
            return;
        }
        TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
        tL_messages_uploadMedia.media = inputMedia;
        TLObject tLObject = delayedMessage.sendRequest;
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject;
            tL_messages_uploadMedia.peer = tL_messages_sendMultiMedia.peer;
            int i2 = 0;
            while (true) {
                if (i2 >= tL_messages_sendMultiMedia.multi_media.size()) {
                    break;
                }
                if (((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2)).media == inputMedia) {
                    putToSendingMessages(delayedMessage.messages.get(i2), delayedMessage.scheduled);
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                    break;
                }
                i2++;
            }
        } else if ((tLObject instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) tLObject).media instanceof TLRPC.TL_inputMediaPaidMedia)) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            tL_messages_uploadMedia.peer = tL_messages_sendMedia.peer;
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) tL_messages_sendMedia.media;
            int i3 = 0;
            while (true) {
                if (i3 >= tL_inputMediaPaidMedia.extended_media.size()) {
                    break;
                }
                if (tL_inputMediaPaidMedia.extended_media.get(i3) == inputMedia) {
                    putToSendingMessages(delayedMessage.messages.get(i3), delayedMessage.scheduled);
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                    break;
                }
                i3++;
            }
        }
        getConnectionsManager().sendRequest(tL_messages_uploadMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda33
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$uploadMultiMedia$49(inputMedia, delayedMessage, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadMultiMedia$49(final TLRPC.InputMedia inputMedia, final DelayedMessage delayedMessage, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadMultiMedia$48(tLObject, inputMedia, delayedMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$uploadMultiMedia$48(TLObject tLObject, TLRPC.InputMedia inputMedia, DelayedMessage delayedMessage) {
        TLRPC.InputMedia inputMedia2;
        if (tLObject != null) {
            TLRPC.MessageMedia messageMedia = (TLRPC.MessageMedia) tLObject;
            if ((inputMedia instanceof TLRPC.TL_inputMediaUploadedPhoto) && (messageMedia instanceof TLRPC.TL_messageMediaPhoto)) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = new TLRPC.TL_inputMediaPhoto();
                TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                tL_inputMediaPhoto.f1733id = tL_inputPhoto;
                TLRPC.Photo photo = messageMedia.photo;
                tL_inputPhoto.f1684id = photo.f1692id;
                tL_inputPhoto.access_hash = photo.access_hash;
                tL_inputPhoto.file_reference = photo.file_reference;
                tL_inputMediaPhoto.spoiler = inputMedia.spoiler;
                inputMedia2 = tL_inputMediaPhoto;
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m1133d("set uploaded photo");
                    inputMedia2 = tL_inputMediaPhoto;
                }
            } else if ((inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument) && (messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = new TLRPC.TL_inputMediaDocument();
                TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                tL_inputMediaDocument.f1731id = tL_inputDocument;
                TLRPC.Document document = messageMedia.document;
                tL_inputDocument.f1677id = document.f1668id;
                tL_inputDocument.access_hash = document.access_hash;
                tL_inputDocument.file_reference = document.file_reference;
                tL_inputMediaDocument.spoiler = inputMedia.spoiler;
                TLRPC.Photo photo2 = messageMedia.video_cover;
                if (photo2 != null) {
                    TLRPC.TL_inputPhoto tL_inputPhoto2 = new TLRPC.TL_inputPhoto();
                    tL_inputPhoto2.f1684id = photo2.f1692id;
                    tL_inputPhoto2.access_hash = photo2.access_hash;
                    tL_inputPhoto2.file_reference = photo2.file_reference;
                    tL_inputMediaDocument.flags |= 8;
                    tL_inputMediaDocument.video_cover = tL_inputPhoto2;
                }
                inputMedia2 = tL_inputMediaDocument;
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m1133d("set uploaded document");
                    inputMedia2 = tL_inputMediaDocument;
                }
            } else {
                inputMedia2 = null;
            }
        }
        if (inputMedia2 != null) {
            int i = inputMedia.ttl_seconds;
            if (i != 0) {
                inputMedia2.ttl_seconds = i;
                inputMedia2.flags |= 1;
            }
            TLObject tLObject2 = delayedMessage.sendRequest;
            if (tLObject2 instanceof TLRPC.TL_messages_sendMultiMedia) {
                TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject2;
                int i2 = 0;
                while (true) {
                    if (i2 >= tL_messages_sendMultiMedia.multi_media.size()) {
                        break;
                    }
                    if (((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2)).media == inputMedia) {
                        ((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2)).media = inputMedia2;
                        break;
                    }
                    i2++;
                }
            } else if ((tLObject2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) tLObject2).media instanceof TLRPC.TL_inputMediaPaidMedia)) {
                TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) ((TLRPC.TL_messages_sendMedia) tLObject2).media;
                int i3 = 0;
                while (true) {
                    if (i3 >= tL_inputMediaPaidMedia.extended_media.size()) {
                        break;
                    }
                    if (tL_inputMediaPaidMedia.extended_media.get(i3) == inputMedia) {
                        tL_inputMediaPaidMedia.extended_media.set(i3, inputMedia2);
                        break;
                    }
                    i3++;
                }
            }
            sendReadyToSendGroup(delayedMessage, false, true);
            return;
        }
        delayedMessage.markAsError();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void sendReadyToSendGroup(DelayedMessage delayedMessage, boolean z, boolean z2) {
        DelayedMessage delayedMessageFindMaxDelayedMessageForMessageId;
        DelayedMessage delayedMessageFindMaxDelayedMessageForMessageId2;
        ArrayList<MessageObject> arrayList;
        int i;
        if (delayedMessage.messageObjects.isEmpty()) {
            delayedMessage.markAsError();
            return;
        }
        String str = "group_" + delayedMessage.groupId;
        int i2 = delayedMessage.finalGroupMessage;
        ArrayList<MessageObject> arrayList2 = delayedMessage.messageObjects;
        int i3 = 1;
        if (i2 != arrayList2.get(arrayList2.size() - 1).getId()) {
            if (z) {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m1133d("final message not added, add");
                }
                putToDelayedMessages(str, delayedMessage);
                return;
            } else {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m1133d("final message not added");
                    return;
                }
                return;
            }
        }
        int i4 = 0;
        if (z) {
            this.delayedMessages.remove(str);
            if (!delayedMessage.scheduled) {
                MessageObject messageObject = delayedMessage.obj;
                if ((messageObject == null || !messageObject.isQuickReply()) && ((arrayList = delayedMessage.messageObjects) == null || arrayList.isEmpty() || !delayedMessage.messageObjects.get(0).isQuickReply())) {
                    i = 0;
                    if (delayedMessage.paidMedia) {
                        ArrayList<MessageObject> arrayList3 = new ArrayList<>();
                        arrayList3.add(delayedMessage.messageObjects.get(0));
                        ArrayList<TLRPC.Message> arrayList4 = new ArrayList<>();
                        arrayList4.add(delayedMessage.messages.get(0));
                        getMessagesStorage().putMessages(arrayList4, false, true, false, 0, i, 0L);
                        getMessagesController().updateInterfaceWithMessages(delayedMessage.peer, arrayList3, i);
                    } else {
                        getMessagesStorage().putMessages(delayedMessage.messages, false, true, false, 0, i, 0L);
                        getMessagesController().updateInterfaceWithMessages(delayedMessage.peer, delayedMessage.messageObjects, i);
                    }
                    if (!delayedMessage.scheduled) {
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
                    }
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m1133d("add message");
                    }
                } else {
                    i3 = 5;
                    i = i3;
                    if (delayedMessage.paidMedia) {
                    }
                    if (!delayedMessage.scheduled) {
                    }
                    if (BuildVars.DEBUG_VERSION) {
                    }
                }
            } else {
                i = i3;
                if (delayedMessage.paidMedia) {
                }
                if (!delayedMessage.scheduled) {
                }
                if (BuildVars.DEBUG_VERSION) {
                }
            }
        }
        TLObject tLObject = delayedMessage.sendRequest;
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject;
            while (i4 < tL_messages_sendMultiMedia.multi_media.size()) {
                TLRPC.InputMedia inputMedia = ((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i4)).media;
                if ((inputMedia instanceof TLRPC.TL_inputMediaUploadedPhoto) || (inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m1133d("multi media not ready");
                        return;
                    }
                    return;
                }
                if ((inputMedia instanceof TLRPC.TL_inputMediaDocument) && i4 < delayedMessage.messageObjects.size()) {
                    MessageObject messageObject2 = delayedMessage.messageObjects.get(i4);
                    String str2 = messageObject2.messageOwner.attachPath;
                    if (str2 == null) {
                        str2 = FileLoader.getDirectory(4) + "/" + messageObject2.getDocument().f1668id + ".mp4";
                    }
                    if (delayedMessage.extraHashMap.containsKey(str2 + "_ct") && inputMedia.video_cover == null) {
                        if (BuildVars.DEBUG_VERSION) {
                            FileLog.m1133d("cover media not ready");
                            return;
                        }
                        return;
                    }
                }
                i4++;
            }
            if (z2 && (delayedMessageFindMaxDelayedMessageForMessageId2 = findMaxDelayedMessageForMessageId(delayedMessage.finalGroupMessage, delayedMessage.peer)) != null) {
                delayedMessageFindMaxDelayedMessageForMessageId2.addDelayedRequest(delayedMessage.sendRequest, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
                ArrayList<DelayedMessageSendAfterRequest> arrayList5 = delayedMessage.requests;
                if (arrayList5 != null) {
                    delayedMessageFindMaxDelayedMessageForMessageId2.requests.addAll(arrayList5);
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m1133d("has maxDelayedMessage, delay");
                    return;
                }
                return;
            }
        } else if ((tLObject instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) tLObject).media instanceof TLRPC.TL_inputMediaPaidMedia)) {
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) ((TLRPC.TL_messages_sendMedia) tLObject).media;
            while (i4 < tL_inputMediaPaidMedia.extended_media.size()) {
                TLRPC.InputMedia inputMedia2 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(i4);
                if ((inputMedia2 instanceof TLRPC.TL_inputMediaUploadedPhoto) || (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m1133d("multi media not ready");
                        return;
                    }
                    return;
                }
                i4++;
            }
            if (z2 && (delayedMessageFindMaxDelayedMessageForMessageId = findMaxDelayedMessageForMessageId(delayedMessage.finalGroupMessage, delayedMessage.peer)) != null) {
                delayedMessageFindMaxDelayedMessageForMessageId.addDelayedRequest(delayedMessage.sendRequest, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
                ArrayList<DelayedMessageSendAfterRequest> arrayList6 = delayedMessage.requests;
                if (arrayList6 != null) {
                    delayedMessageFindMaxDelayedMessageForMessageId.requests.addAll(arrayList6);
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m1133d("has maxDelayedMessage, delay");
                    return;
                }
                return;
            }
        } else {
            TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
            while (i4 < tL_messages_sendEncryptedMultiMedia.files.size()) {
                if (((TLRPC.InputEncryptedFile) tL_messages_sendEncryptedMultiMedia.files.get(i4)) instanceof TLRPC.TL_inputEncryptedFile) {
                    return;
                } else {
                    i4++;
                }
            }
        }
        TLObject tLObject2 = delayedMessage.sendRequest;
        if (tLObject2 instanceof TLRPC.TL_messages_sendMultiMedia) {
            lambda$performSendMessageRequestMulti$52((TLRPC.TL_messages_sendMultiMedia) tLObject2, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
        } else if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
            lambda$performSendMessageRequestMulti$52((TLRPC.TL_messages_sendMedia) tLObject2, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
        } else {
            getSecretChatHelper().performSendEncryptedRequest((TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest, delayedMessage);
        }
        delayedMessage.sendDelayedRequests();
    }

    protected void putToSendingMessages(final TLRPC.Message message, final boolean z) {
        if (Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda114
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$putToSendingMessages$50(message, z);
                }
            });
        } else {
            putToSendingMessages(message, z, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putToSendingMessages$50(TLRPC.Message message, boolean z) {
        putToSendingMessages(message, z, true);
    }

    protected void putToSendingMessages(TLRPC.Message message, boolean z, boolean z2) {
        if (message == null) {
            return;
        }
        int i = message.f1686id;
        if (i > 0) {
            this.editingMessages.put(i, message);
            return;
        }
        boolean z3 = this.sendingMessages.indexOfKey(i) >= 0;
        removeFromUploadingMessages(message.f1686id, z);
        this.sendingMessages.put(message.f1686id, message);
        if (z || z3) {
            return;
        }
        long dialogId = MessageObject.getDialogId(message);
        LongSparseArray longSparseArray = this.sendingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(((Integer) longSparseArray.get(dialogId, 0)).intValue() + 1));
        if (z2) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
        }
    }

    protected TLRPC.Message removeFromSendingMessages(int i, boolean z) {
        if (i > 0) {
            TLRPC.Message message = this.editingMessages.get(i);
            if (message != null) {
                this.editingMessages.remove(i);
            }
            return message;
        }
        TLRPC.Message message2 = this.sendingMessages.get(i);
        if (message2 != null) {
            this.sendingMessages.remove(i);
            if (!z) {
                long dialogId = MessageObject.getDialogId(message2);
                Integer num = (Integer) this.sendingMessagesIdDialogs.get(dialogId);
                if (num != null) {
                    int iIntValue = num.intValue() - 1;
                    if (iIntValue <= 0) {
                        this.sendingMessagesIdDialogs.remove(dialogId);
                    } else {
                        this.sendingMessagesIdDialogs.put(dialogId, Integer.valueOf(iIntValue));
                    }
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
                }
            }
        }
        return message2;
    }

    public int getSendingMessageId(long j) {
        for (int i = 0; i < this.sendingMessages.size(); i++) {
            TLRPC.Message messageValueAt = this.sendingMessages.valueAt(i);
            if (messageValueAt.dialog_id == j) {
                return messageValueAt.f1686id;
            }
        }
        for (int i2 = 0; i2 < this.uploadMessages.size(); i2++) {
            TLRPC.Message messageValueAt2 = this.uploadMessages.valueAt(i2);
            if (messageValueAt2.dialog_id == j) {
                return messageValueAt2.f1686id;
            }
        }
        return 0;
    }

    protected void putToUploadingMessages(MessageObject messageObject) {
        if (messageObject == null || messageObject.getId() > 0 || messageObject.scheduled) {
            return;
        }
        TLRPC.Message message = messageObject.messageOwner;
        boolean z = this.uploadMessages.indexOfKey(message.f1686id) >= 0;
        this.uploadMessages.put(message.f1686id, message);
        if (z) {
            return;
        }
        long dialogId = MessageObject.getDialogId(message);
        LongSparseArray longSparseArray = this.uploadingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(((Integer) longSparseArray.get(dialogId, 0)).intValue() + 1));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
    }

    protected void removeFromUploadingMessages(int i, boolean z) {
        TLRPC.Message message;
        if (i > 0 || z || (message = this.uploadMessages.get(i)) == null) {
            return;
        }
        this.uploadMessages.remove(i);
        long dialogId = MessageObject.getDialogId(message);
        Integer num = (Integer) this.uploadingMessagesIdDialogs.get(dialogId);
        if (num != null) {
            int iIntValue = num.intValue() - 1;
            if (iIntValue <= 0) {
                this.uploadingMessagesIdDialogs.remove(dialogId);
            } else {
                this.uploadingMessagesIdDialogs.put(dialogId, Integer.valueOf(iIntValue));
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
        }
    }

    public boolean isSendingMessage(int i) {
        return this.sendingMessages.indexOfKey(i) >= 0 || this.editingMessages.indexOfKey(i) >= 0;
    }

    public boolean isSendingPaidMessage(int i, int i2) {
        HashMap<String, ArrayList<DelayedMessage>> map = this.delayedMessages;
        DelayedMessage delayedMessage = null;
        if (map != null) {
            for (ArrayList<DelayedMessage> arrayList : map.values()) {
                if (arrayList != null) {
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        DelayedMessage delayedMessage2 = arrayList.get(i3);
                        i3++;
                        DelayedMessage delayedMessage3 = delayedMessage2;
                        ArrayList<TLRPC.Message> arrayList2 = delayedMessage3.messages;
                        if (arrayList2 != null) {
                            int size2 = arrayList2.size();
                            int i4 = 0;
                            while (true) {
                                if (i4 >= size2) {
                                    break;
                                }
                                TLRPC.Message message = arrayList2.get(i4);
                                i4++;
                                TLRPC.Message message2 = message;
                                if (message2 != null && message2.f1686id == i) {
                                    delayedMessage = delayedMessage3;
                                    break;
                                }
                            }
                            if (delayedMessage != null) {
                                break;
                            }
                        }
                    }
                    if (delayedMessage != null) {
                        break;
                    }
                }
            }
        }
        if (delayedMessage != null && i2 >= 0 && i2 < delayedMessage.messages.size()) {
            i = delayedMessage.messages.get(i2).f1686id;
        }
        return this.sendingMessages.indexOfKey(i) >= 0 || this.editingMessages.indexOfKey(i) >= 0;
    }

    public boolean isSendingMessageIdDialog(long j) {
        return ((Integer) this.sendingMessagesIdDialogs.get(j, 0)).intValue() > 0;
    }

    public boolean isUploadingMessageIdDialog(long j) {
        return ((Integer) this.uploadingMessagesIdDialogs.get(j, 0)).intValue() > 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: performSendMessageRequestMulti, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$performSendMessageRequestMulti$52(final TLObject tLObject, final ArrayList<MessageObject> arrayList, final ArrayList<String> arrayList2, final ArrayList<Object> arrayList3, final DelayedMessage delayedMessage, final boolean z) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            putToSendingMessages(arrayList.get(i).messageOwner, z);
        }
        if (StarsController.getInstance(this.currentAccount).beforeSendingFinalRequest(tLObject, arrayList, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$51(tLObject, arrayList, arrayList2, arrayList3, delayedMessage, z);
            }
        }) && BotForumHelper.getInstance(this.currentAccount).beforeSendingFinalRequest(tLObject, arrayList, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$52(tLObject, arrayList, arrayList2, arrayList3, delayedMessage, z);
            }
        })) {
            getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda65
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$performSendMessageRequestMulti$61(arrayList3, tLObject, arrayList, arrayList2, delayedMessage, z, tLObject2, tL_error);
                }
            }, (QuickAckDelegate) null, 68);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$61(ArrayList arrayList, final TLObject tLObject, final ArrayList arrayList2, final ArrayList arrayList3, final DelayedMessage delayedMessage, final boolean z, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        if (tL_error != null && FileRefController.isFileRefError(tL_error.text)) {
            final int fileRefErrorIndex = FileRefController.getFileRefErrorIndex(tL_error.text);
            if (arrayList != null) {
                ArrayList arrayList4 = new ArrayList(arrayList);
                if (fileRefErrorIndex >= 0) {
                    int i = 0;
                    while (i < arrayList4.size()) {
                        arrayList4.set(i, fileRefErrorIndex == i ? arrayList4.get(i) : null);
                        i++;
                    }
                }
                getFileRefController().requestReference(arrayList4, tLObject, arrayList2, arrayList3, arrayList4, delayedMessage, Boolean.valueOf(z));
                return;
            }
            if (delayedMessage != null && !delayedMessage.getRetriedToSend(fileRefErrorIndex)) {
                delayedMessage.setRetriedToSend(fileRefErrorIndex, true);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda111
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequestMulti$53(tLObject, fileRefErrorIndex, delayedMessage, arrayList2, z);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda112
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$60(tL_error, tLObject2, z, arrayList2, arrayList3, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$53(TLObject tLObject, int i, DelayedMessage delayedMessage, ArrayList arrayList, boolean z) {
        boolean z2;
        TLRPC.InputMedia inputMedia;
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject;
            int size = tL_messages_sendMultiMedia.multi_media.size();
            int i2 = 0;
            z2 = false;
            while (i2 < size) {
                if (i >= 0) {
                    if (i == i2) {
                        removeFromSendingMessages(((MessageObject) arrayList.get(i2)).getId(), z);
                        TLRPC.TL_inputSingleMedia tL_inputSingleMedia = (TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2);
                        TLRPC.InputMedia inputMedia2 = tL_inputSingleMedia.media;
                        if ((inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia2 instanceof TLRPC.TL_inputMediaDocument)) {
                            tL_inputSingleMedia.media = delayedMessage.inputMedias.get(i2);
                        }
                        delayedMessage.videoEditedInfo = delayedMessage.videoEditedInfos.get(i2);
                        delayedMessage.httpLocation = delayedMessage.httpLocations.get(i2);
                        TLRPC.PhotoSize photoSize = delayedMessage.locations.get(i2);
                        delayedMessage.photoSize = photoSize;
                        delayedMessage.performMediaUpload = true;
                        z2 = z2;
                        if (tL_inputSingleMedia.media.file == null || photoSize != null) {
                            z2 = true;
                        }
                        performSendDelayedMessage(delayedMessage, i2);
                    }
                } else if (delayedMessage.parentObjects.get(i2) == null) {
                }
                i2++;
                z2 = z2;
            }
        } else if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) ((TLRPC.TL_messages_sendMedia) tLObject).media;
            int size2 = tL_inputMediaPaidMedia.extended_media.size();
            int i3 = 0;
            z2 = false;
            while (i3 < size2) {
                if (i >= 0) {
                    if (i == i3) {
                        removeFromSendingMessages(((MessageObject) arrayList.get(i3)).getId(), z);
                        TLRPC.InputMedia inputMedia3 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(i3);
                        if (inputMedia3 instanceof TLRPC.TL_inputMediaPhoto) {
                            ArrayList arrayList2 = tL_inputMediaPaidMedia.extended_media;
                            inputMedia = delayedMessage.inputMedias.get(i3);
                            arrayList2.set(i3, inputMedia);
                        } else {
                            if (inputMedia3 instanceof TLRPC.TL_inputMediaDocument) {
                                ArrayList arrayList3 = tL_inputMediaPaidMedia.extended_media;
                                inputMedia = delayedMessage.inputMedias.get(i3);
                                arrayList3.set(i3, inputMedia);
                            }
                            delayedMessage.videoEditedInfo = delayedMessage.videoEditedInfos.get(i3);
                            delayedMessage.httpLocation = delayedMessage.httpLocations.get(i3);
                            TLRPC.PhotoSize photoSize2 = delayedMessage.locations.get(i3);
                            delayedMessage.photoSize = photoSize2;
                            delayedMessage.performMediaUpload = true;
                            z2 = z2;
                            if (inputMedia3.file != null || photoSize2 != null) {
                                z2 = true;
                            }
                            performSendDelayedMessage(delayedMessage, i3);
                        }
                        inputMedia3 = inputMedia;
                        delayedMessage.videoEditedInfo = delayedMessage.videoEditedInfos.get(i3);
                        delayedMessage.httpLocation = delayedMessage.httpLocations.get(i3);
                        TLRPC.PhotoSize photoSize22 = delayedMessage.locations.get(i3);
                        delayedMessage.photoSize = photoSize22;
                        delayedMessage.performMediaUpload = true;
                        z2 = z2;
                        if (inputMedia3.file != null) {
                            z2 = true;
                            performSendDelayedMessage(delayedMessage, i3);
                        }
                    }
                } else if (delayedMessage.parentObjects.get(i3) == null) {
                }
                i3++;
                z2 = z2;
            }
        } else {
            z2 = false;
        }
        if (z2) {
            return;
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            TLRPC.Message message = ((MessageObject) arrayList.get(i4)).messageOwner;
            getMessagesStorage().markMessageAsSendError(message, z ? 1 : 0);
            message.send_state = 2;
            message.errorAllowedPriceStars = 0L;
            message.errorNewPriceStars = 0L;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(message.f1686id));
            processSentMessage(message.f1686id);
            removeFromSendingMessages(message.f1686id, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$60(TLRPC.TL_error tL_error, TLObject tLObject, final boolean z, ArrayList arrayList, ArrayList arrayList2, TLObject tLObject2) {
        ?? r8;
        TLRPC.TL_error tL_error2;
        TLObject tLObject3;
        boolean z2;
        SendMessagesHelper sendMessagesHelper;
        int i;
        String str;
        int i2;
        int i3;
        boolean z3;
        TLRPC.Updates updates;
        final SendMessagesHelper sendMessagesHelper2;
        TLRPC.Message message;
        int i4;
        TLRPC.Message message2;
        ArrayList arrayList3;
        TLRPC.Message message3;
        ArrayList arrayList4;
        MessageObject messageObject;
        TLRPC.Updates updates2;
        MessageObject messageObject2;
        LongSparseArray longSparseArray;
        SparseArray sparseArray;
        int i5;
        String quickReplyName;
        TLRPC.MessageReplyHeader messageReplyHeader;
        SparseArray sparseArray2;
        final SendMessagesHelper sendMessagesHelper3 = this;
        ArrayList arrayList5 = arrayList;
        TLObject tLObject4 = tLObject2;
        if (tL_error == null) {
            SparseArray sparseArray3 = new SparseArray();
            LongSparseArray longSparseArray2 = new LongSparseArray();
            TLRPC.Updates updates3 = (TLRPC.Updates) tLObject;
            ArrayList<TLRPC.Update> arrayList6 = updates3.updates;
            boolean z4 = z;
            int i6 = 0;
            LongSparseArray longSparseArray3 = null;
            while (i6 < arrayList6.size()) {
                TLRPC.Update update = arrayList6.get(i6);
                if (update instanceof TLRPC.TL_updateMessageID) {
                    TLRPC.TL_updateMessageID tL_updateMessageID = (TLRPC.TL_updateMessageID) update;
                    longSparseArray2.put(tL_updateMessageID.random_id, Integer.valueOf(tL_updateMessageID.f1814id));
                    arrayList6.remove(i6);
                    i6--;
                    sparseArray = sparseArray3;
                } else {
                    if (update instanceof TLRPC.TL_updateNewMessage) {
                        final TLRPC.TL_updateNewMessage tL_updateNewMessage = (TLRPC.TL_updateNewMessage) update;
                        TLRPC.Message message4 = tL_updateNewMessage.message;
                        sparseArray3.put(message4.f1686id, message4);
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda49
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$performSendMessageRequestMulti$54(tL_updateNewMessage);
                            }
                        });
                        arrayList6.remove(i6);
                        i6--;
                        sparseArray = sparseArray3;
                    } else if (update instanceof TLRPC.TL_updateNewChannelMessage) {
                        final TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage = (TLRPC.TL_updateNewChannelMessage) update;
                        final long updateChannelId = MessagesController.getUpdateChannelId(tL_updateNewChannelMessage);
                        TLRPC.Chat chat = sendMessagesHelper3.getMessagesController().getChat(Long.valueOf(updateChannelId));
                        if (!(chat == null || chat.megagroup) || (messageReplyHeader = tL_updateNewChannelMessage.message.reply_to) == null || (messageReplyHeader.reply_to_top_id == 0 && messageReplyHeader.reply_to_msg_id == 0)) {
                            sparseArray2 = sparseArray3;
                        } else {
                            if (longSparseArray3 == null) {
                                longSparseArray3 = new LongSparseArray();
                            }
                            sparseArray2 = sparseArray3;
                            long dialogId = MessageObject.getDialogId(tL_updateNewChannelMessage.message);
                            SparseArray sparseArray4 = (SparseArray) longSparseArray3.get(dialogId);
                            if (sparseArray4 == null) {
                                sparseArray4 = new SparseArray();
                                longSparseArray3.put(dialogId, sparseArray4);
                            }
                            TLRPC.MessageReplyHeader messageReplyHeader2 = tL_updateNewChannelMessage.message.reply_to;
                            int i7 = messageReplyHeader2.reply_to_top_id;
                            if (i7 == 0) {
                                i7 = messageReplyHeader2.reply_to_msg_id;
                            }
                            TLRPC.MessageReplies tL_messageReplies = (TLRPC.MessageReplies) sparseArray4.get(i7);
                            if (tL_messageReplies == null) {
                                tL_messageReplies = new TLRPC.TL_messageReplies();
                                sparseArray4.put(i7, tL_messageReplies);
                            }
                            TLRPC.Peer peer = tL_updateNewChannelMessage.message.from_id;
                            if (peer != null) {
                                tL_messageReplies.recent_repliers.add(0, peer);
                            }
                            tL_messageReplies.replies++;
                        }
                        TLRPC.Message message5 = tL_updateNewChannelMessage.message;
                        sparseArray = sparseArray2;
                        sparseArray.put(message5.f1686id, message5);
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda50
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$performSendMessageRequestMulti$55(tL_updateNewChannelMessage);
                            }
                        });
                        arrayList6.remove(i6);
                        i6--;
                        if (tL_updateNewChannelMessage.message.pinned) {
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda51
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$performSendMessageRequestMulti$56(tL_updateNewChannelMessage, updateChannelId);
                                }
                            });
                        }
                    } else {
                        sparseArray = sparseArray3;
                        if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
                            TLRPC.Message message6 = ((TLRPC.TL_updateNewScheduledMessage) update).message;
                            sparseArray.put(message6.f1686id, message6);
                            arrayList6.remove(i6);
                            i6--;
                            z4 = true;
                        } else if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
                            QuickRepliesController quickRepliesController = QuickRepliesController.getInstance(sendMessagesHelper3.currentAccount);
                            if (arrayList5.isEmpty()) {
                                quickReplyName = null;
                                i5 = 0;
                            } else {
                                i5 = 0;
                                quickReplyName = ((MessageObject) arrayList5.get(0)).getQuickReplyName();
                            }
                            quickRepliesController.processUpdate(update, quickReplyName, (arrayList5.isEmpty() ? null : Integer.valueOf(((MessageObject) arrayList5.get(i5)).getQuickReplyId())).intValue());
                            TLRPC.Message message7 = ((TLRPC.TL_updateQuickReplyMessage) update).message;
                            sparseArray.put(message7.f1686id, message7);
                            arrayList6.remove(i6);
                            i6--;
                        }
                    }
                    z4 = false;
                }
                i6++;
                sparseArray3 = sparseArray;
            }
            SparseArray sparseArray5 = sparseArray3;
            char c = 2;
            char c2 = 4;
            if (longSparseArray3 != null) {
                i2 = 1;
                sendMessagesHelper3.getMessagesStorage().putChannelViews(null, null, longSparseArray3, true);
                i3 = 0;
                sendMessagesHelper3.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray3, Boolean.TRUE);
            } else {
                i2 = 1;
                i3 = 0;
            }
            int[] iArr = new int[i2];
            iArr[i3] = i3;
            int[] iArr2 = {i3};
            ArrayList arrayList7 = new ArrayList();
            int i8 = 0;
            SendMessagesHelper sendMessagesHelper4 = sendMessagesHelper3;
            while (i8 < arrayList5.size()) {
                MessageObject messageObject3 = (MessageObject) arrayList5.get(i8);
                String str2 = (String) arrayList2.get(i8);
                TLRPC.Message message8 = messageObject3.messageOwner;
                char c3 = c2;
                final int i9 = message8.f1686id;
                ArrayList arrayList8 = new ArrayList();
                ArrayList arrayList9 = arrayList7;
                Integer num = (Integer) longSparseArray2.get(message8.random_id);
                if (num == null || (message = (TLRPC.Message) sparseArray5.get(num.intValue())) == null) {
                    sendMessagesHelper2 = this;
                    z3 = z;
                    updates = updates3;
                    z2 = true;
                    break;
                }
                MessageObject.getDialogId(message);
                arrayList8.add(message);
                if ((message.flags & 33554432) != 0) {
                    TLRPC.Message message9 = messageObject3.messageOwner;
                    i4 = i8;
                    message9.ttl_period = message.ttl_period;
                    message9.flags |= 33554432;
                } else {
                    i4 = i8;
                }
                if (tLObject4 instanceof TLRPC.TL_messages_sendMedia) {
                    arrayList4 = arrayList9;
                    message3 = message8;
                    arrayList3 = arrayList8;
                    message2 = message;
                    updateMediaPaths((MessageObject) arrayList5.get(0), message2, message.f1686id, arrayList2, false, -1);
                    messageObject = messageObject3;
                } else {
                    message2 = message;
                    arrayList3 = arrayList8;
                    message3 = message8;
                    arrayList4 = arrayList9;
                    messageObject = messageObject3;
                    updateMediaPaths(messageObject, message2, message2.f1686id, str2, false);
                }
                TLRPC.Updates updates4 = updates3;
                final int mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                message3.f1686id = message2.f1686id;
                int i10 = message2.quick_reply_shortcut_id;
                message3.quick_reply_shortcut_id = i10;
                if (i10 != 0) {
                    message3.flags |= TLObject.FLAG_30;
                }
                final int[] iArr3 = iArr2;
                LongSparseArray longSparseArray4 = longSparseArray2;
                final long j = message2.grouped_id;
                if (z) {
                    updates2 = updates4;
                    messageObject2 = messageObject;
                    longSparseArray = longSparseArray4;
                } else {
                    updates2 = updates4;
                    messageObject2 = messageObject;
                    Integer numValueOf = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(message2.dialog_id));
                    if (numValueOf == null) {
                        longSparseArray = longSparseArray4;
                        numValueOf = Integer.valueOf(getMessagesStorage().getDialogReadMax(message2.out, message2.dialog_id));
                        getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(message2.dialog_id), numValueOf);
                    } else {
                        longSparseArray = longSparseArray4;
                    }
                    message2.unread = numValueOf.intValue() < message2.f1686id;
                }
                iArr[0] = iArr[0] + 1;
                arrayList4.add(Integer.valueOf(i9));
                getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                message3.send_state = 0;
                message3.errorAllowedPriceStars = 0L;
                message3.errorNewPriceStars = 0L;
                NotificationCenter notificationCenter = getNotificationCenter();
                int i11 = NotificationCenter.messageReceivedByServer;
                Integer numValueOf2 = Integer.valueOf(i9);
                Integer numValueOf3 = Integer.valueOf(message3.f1686id);
                Long lValueOf = Long.valueOf(message3.dialog_id);
                Long lValueOf2 = Long.valueOf(j);
                Integer numValueOf4 = Integer.valueOf(mediaExistanceFlags);
                Boolean boolValueOf = Boolean.valueOf(z4);
                Object[] objArr = new Object[7];
                objArr[0] = numValueOf2;
                objArr[1] = numValueOf3;
                objArr[c] = message3;
                objArr[3] = lValueOf;
                objArr[c3] = lValueOf2;
                objArr[5] = numValueOf4;
                objArr[6] = boolValueOf;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i11, objArr);
                NotificationCenter notificationCenter2 = getNotificationCenter();
                int i12 = NotificationCenter.messageReceivedByServer2;
                Integer numValueOf5 = Integer.valueOf(i9);
                Integer numValueOf6 = Integer.valueOf(message3.f1686id);
                Long lValueOf3 = Long.valueOf(message3.dialog_id);
                Long lValueOf4 = Long.valueOf(j);
                Integer numValueOf7 = Integer.valueOf(mediaExistanceFlags);
                Boolean boolValueOf2 = Boolean.valueOf(z4);
                Object[] objArr2 = new Object[7];
                objArr2[0] = numValueOf5;
                objArr2[1] = numValueOf6;
                objArr2[c] = message3;
                objArr2[3] = lValueOf3;
                objArr2[c3] = lValueOf4;
                objArr2[5] = numValueOf7;
                objArr2[6] = boolValueOf2;
                notificationCenter2.lambda$postNotificationNameOnUIThread$1(i12, objArr2);
                final SparseArray sparseArray6 = sparseArray5;
                final ArrayList arrayList10 = arrayList4;
                final int[] iArr4 = iArr;
                final TLRPC.Message message10 = message3;
                final boolean z5 = z4;
                final MessageObject messageObject4 = messageObject2;
                TLRPC.Updates updates5 = updates2;
                final ArrayList arrayList11 = arrayList3;
                sendMessagesHelper4 = this;
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda52
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequestMulti$58(z5, message10, i9, arrayList11, iArr3, iArr4, z, messageObject4, sparseArray6, arrayList10, j, mediaExistanceFlags);
                    }
                });
                tLObject4 = tLObject2;
                iArr2 = iArr3;
                updates3 = updates5;
                c2 = c3;
                longSparseArray2 = longSparseArray;
                c = 2;
                z4 = z5;
                i8 = i4 + 1;
                arrayList7 = arrayList10;
                sparseArray5 = sparseArray6;
                iArr = iArr4;
                arrayList5 = arrayList;
            }
            z3 = z;
            updates = updates3;
            z2 = false;
            sendMessagesHelper2 = sendMessagesHelper4;
            final TLRPC.Updates updates6 = updates;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda53
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSendMessageRequestMulti$59(updates6);
                }
            });
            tL_error2 = tL_error;
            tLObject3 = tLObject2;
            sendMessagesHelper = sendMessagesHelper2;
            r8 = z3;
        } else {
            r8 = z;
            tL_error2 = tL_error;
            tLObject3 = tLObject2;
            AlertsCreator.processError(sendMessagesHelper3.currentAccount, tL_error2, null, tLObject3, new Object[0]);
            z2 = true;
            sendMessagesHelper = sendMessagesHelper3;
        }
        if (z2) {
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                MessageObject messageObject5 = (MessageObject) arrayList.get(i13);
                TLRPC.Message message11 = messageObject5.messageOwner;
                sendMessagesHelper.getMessagesStorage().markMessageAsSendError(message11, r8);
                message11.send_state = 2;
                if (r8 != 0 || tL_error2 == null || (str = tL_error2.text) == null || !str.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
                    i = 1;
                } else {
                    StarsController.getInstance(sendMessagesHelper.currentAccount);
                    message11.errorAllowedPriceStars = StarsController.getAllowedPaidStars(tLObject3);
                    message11.errorNewPriceStars = Long.parseLong(tL_error2.text.substring(23));
                    i = 1;
                    StarsController.getInstance(sendMessagesHelper.currentAccount).showPriceChangedToast(Arrays.asList(messageObject5));
                    sendMessagesHelper.getMessagesStorage().updateMessageCustomParams(MessageObject.getDialogId(message11), message11);
                }
                NotificationCenter notificationCenter3 = sendMessagesHelper.getNotificationCenter();
                int i14 = NotificationCenter.messageSendError;
                Object[] objArr3 = new Object[i];
                objArr3[0] = Integer.valueOf(message11.f1686id);
                notificationCenter3.lambda$postNotificationNameOnUIThread$1(i14, objArr3);
                sendMessagesHelper.processSentMessage(message11.f1686id);
                sendMessagesHelper.removeFromSendingMessages(message11.f1686id, r8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$54(TLRPC.TL_updateNewMessage tL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tL_updateNewMessage.pts, -1, tL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$55(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tL_updateNewChannelMessage.pts, tL_updateNewChannelMessage.pts_count, tL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$56(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage, long j) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(tL_updateNewChannelMessage.message.f1686id));
        getMessagesStorage().updatePinnedMessages(-j, arrayList, true, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.telegram.messenger.MessagesStorage] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [int] */
    /* JADX WARN: Type inference failed for: r19v2 */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$58(final boolean z, final TLRPC.Message message, final int i, ArrayList arrayList, final int[] iArr, final int[] iArr2, final boolean z2, final MessageObject messageObject, final SparseArray sparseArray, final ArrayList arrayList2, final long j, final int i2) {
        ?? r19 = (message.quick_reply_shortcut_id == 0 && message.quick_reply_shortcut == null) ? z : 5;
        getMessagesStorage().updateMessageStateAndId(message.random_id, MessageObject.getPeerId(message.peer_id), Integer.valueOf(i), message.f1686id, 0, false, r19, message.quick_reply_shortcut_id);
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, r19 == true ? 1 : 0, message.quick_reply_shortcut_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$57(iArr, iArr2, z2, z, messageObject, sparseArray, arrayList2, message, i, j, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$57(int[] iArr, int[] iArr2, boolean z, boolean z2, MessageObject messageObject, SparseArray sparseArray, ArrayList arrayList, TLRPC.Message message, int i, long j, int i2) {
        TLRPC.Message message2;
        char c;
        char c2;
        int i3 = iArr[0] + 1;
        iArr[0] = i3;
        if (i3 != iArr2[0] || z == z2) {
            message2 = message;
            c = 0;
            c2 = 1;
        } else {
            message2 = message;
            c2 = 1;
            c = 0;
            getMessagesController().deleteMessages(arrayList, null, null, messageObject.getDialogId(), false, z ? 1 : 0, false, 0L, null, 0, z2 && !z, (!z2 || sparseArray.size() <= 1) ? 0 : sparseArray.keyAt(0));
        }
        getMediaDataController().increasePeerRaiting(message2.dialog_id);
        NotificationCenter notificationCenter = getNotificationCenter();
        int i4 = NotificationCenter.messageReceivedByServer;
        Integer numValueOf = Integer.valueOf(i);
        Integer numValueOf2 = Integer.valueOf(message2.f1686id);
        Long lValueOf = Long.valueOf(message2.dialog_id);
        Long lValueOf2 = Long.valueOf(j);
        Integer numValueOf3 = Integer.valueOf(i2);
        Boolean boolValueOf = Boolean.valueOf(z2);
        Object[] objArr = new Object[7];
        objArr[c] = numValueOf;
        objArr[c2] = numValueOf2;
        objArr[2] = message2;
        objArr[3] = lValueOf;
        objArr[4] = lValueOf2;
        objArr[5] = numValueOf3;
        objArr[6] = boolValueOf;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i4, objArr);
        NotificationCenter notificationCenter2 = getNotificationCenter();
        int i5 = NotificationCenter.messageReceivedByServer2;
        Integer numValueOf4 = Integer.valueOf(i);
        Integer numValueOf5 = Integer.valueOf(message2.f1686id);
        Long lValueOf3 = Long.valueOf(message2.dialog_id);
        Long lValueOf4 = Long.valueOf(j);
        Integer numValueOf6 = Integer.valueOf(i2);
        Boolean boolValueOf2 = Boolean.valueOf(z2);
        Object[] objArr2 = new Object[7];
        objArr2[c] = numValueOf4;
        objArr2[c2] = numValueOf5;
        objArr2[2] = message2;
        objArr2[3] = lValueOf3;
        objArr2[4] = lValueOf4;
        objArr2[5] = numValueOf6;
        objArr2[6] = boolValueOf2;
        notificationCenter2.lambda$postNotificationNameOnUIThread$1(i5, objArr2);
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$59(TLRPC.Updates updates) {
        getMessagesController().processUpdates(updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSendMessageRequest(TLObject tLObject, MessageObject messageObject, String str, DelayedMessage delayedMessage, Object obj, HashMap<String, String> map, boolean z) {
        lambda$performSendMessageRequest$66(tLObject, messageObject, str, null, false, delayedMessage, obj, map, z);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException
        */
    private org.telegram.messenger.SendMessagesHelper.DelayedMessage findMaxDelayedMessageForMessageId(int r11, long r12) {
        /*
            r10 = this;
            java.util.HashMap<java.lang.String, java.util.ArrayList<org.telegram.messenger.SendMessagesHelper$DelayedMessage>> r0 = r10.delayedMessages
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
        Ld:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L6e
            java.lang.Object r3 = r0.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r3 = r3.getValue()
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r4 = r3.size()
            r5 = 0
            r6 = r5
        L25:
            if (r6 >= r4) goto Ld
            java.lang.Object r7 = r3.get(r6)
            org.telegram.messenger.SendMessagesHelper$DelayedMessage r7 = (org.telegram.messenger.SendMessagesHelper.DelayedMessage) r7
            int r8 = r7.type
            r9 = 4
            if (r8 == r9) goto L34
            if (r8 != 0) goto L6b
        L34:
            long r8 = r7.peer
            int r8 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r8 != 0) goto L6b
            org.telegram.messenger.MessageObject r8 = r7.obj
            if (r8 == 0) goto L43
            int r8 = r8.getId()
            goto L61
        L43:
            java.util.ArrayList<org.telegram.messenger.MessageObject> r8 = r7.messageObjects
            if (r8 == 0) goto L60
            boolean r8 = r8.isEmpty()
            if (r8 != 0) goto L60
            java.util.ArrayList<org.telegram.messenger.MessageObject> r8 = r7.messageObjects
            int r9 = r8.size()
            int r9 = r9 + (-1)
            java.lang.Object r8 = r8.get(r9)
            org.telegram.messenger.MessageObject r8 = (org.telegram.messenger.MessageObject) r8
            int r8 = r8.getId()
            goto L61
        L60:
            r8 = r5
        L61:
            if (r8 == 0) goto L6b
            if (r8 <= r11) goto L6b
            if (r1 != 0) goto L6b
            if (r2 >= r8) goto L6b
            r1 = r7
            r2 = r8
        L6b:
            int r6 = r6 + 1
            goto L25
        L6e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.findMaxDelayedMessageForMessageId(int, long):org.telegram.messenger.SendMessagesHelper$DelayedMessage");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: performSendMessageRequest, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$performSendMessageRequest$66(final TLObject tLObject, final MessageObject messageObject, final String str, final DelayedMessage delayedMessage, final boolean z, final DelayedMessage delayedMessage2, final Object obj, final HashMap<String, String> map, final boolean z2) {
        DelayedMessage delayedMessageFindMaxDelayedMessageForMessageId;
        ArrayList<DelayedMessageSendAfterRequest> arrayList;
        if (!(tLObject instanceof TLRPC.TL_messages_editMessage) && z && (delayedMessageFindMaxDelayedMessageForMessageId = findMaxDelayedMessageForMessageId(messageObject.getId(), messageObject.getDialogId())) != null) {
            delayedMessageFindMaxDelayedMessageForMessageId.addDelayedRequest(tLObject, messageObject, str, obj, delayedMessage2, delayedMessage != null ? delayedMessage.scheduled : false);
            if (delayedMessage == null || (arrayList = delayedMessage.requests) == null) {
                return;
            }
            delayedMessageFindMaxDelayedMessageForMessageId.requests.addAll(arrayList);
            return;
        }
        final TLRPC.Message message = messageObject.messageOwner;
        putToSendingMessages(message, z2);
        if (StarsController.getInstance(this.currentAccount).beforeSendingFinalRequest(tLObject, messageObject, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$62(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
            }
        }) && BotForumHelper.getInstance(this.currentAccount).beforeSendingFinalRequest(tLObject, messageObject, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$63(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
            }
        })) {
            message.reqId = getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda91
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$performSendMessageRequest$81(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2, message, tLObject2, tL_error);
                }
            }, new QuickAckDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda92
                @Override // org.telegram.tgnet.QuickAckDelegate
                public final void run() {
                    this.f$0.lambda$performSendMessageRequest$83(message);
                }
            }, (tLObject instanceof TLRPC.TL_messages_sendMessage ? 128 : 0) | 68);
            if (delayedMessage != null) {
                delayedMessage.sendDelayedRequests();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$81(final TLObject tLObject, final MessageObject messageObject, final String str, final DelayedMessage delayedMessage, final boolean z, final DelayedMessage delayedMessage2, final Object obj, final HashMap map, final boolean z2, final TLRPC.Message message, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        if (tL_error != null && (((tLObject instanceof TLRPC.TL_messages_sendMedia) || (tLObject instanceof TLRPC.TL_messages_editMessage)) && FileRefController.isFileRefError(tL_error.text))) {
            if (FileRefController.isFileRefErrorCover(tL_error.text)) {
                if (removeCoverFromRequest(tLObject)) {
                    lambda$performSendMessageRequest$66(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
                    return;
                }
            } else if (obj != null) {
                getFileRefController().requestReference(obj, tLObject, messageObject, str, delayedMessage, Boolean.valueOf(z), delayedMessage2, Boolean.valueOf(z2));
                return;
            } else if (delayedMessage2 != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequest$64(message, z2, tLObject, delayedMessage2);
                    }
                });
                return;
            }
        }
        if (tL_error != null && (tLObject instanceof TLRPC.TL_messages_sendMedia)) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            if (tL_messages_sendMedia.media instanceof TLRPC.TL_inputMediaStakeDice) {
                if ("GAME_HASH_INVALID".equalsIgnoreCase(tL_error.text)) {
                    getConnectionsManager().sendRequestTyped(new TLRPC.TL_messages_getEmojiGameInfo(), new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda3
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj2, Object obj3) {
                            this.f$0.lambda$performSendMessageRequest$65(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2, (TLRPC.EmojiGameInfo) obj2, (TLRPC.TL_error) obj3);
                        }
                    });
                    return;
                } else if ("BALANCE_TOO_LOW".equalsIgnoreCase(tL_error.text)) {
                    final TLRPC.TL_inputMediaStakeDice tL_inputMediaStakeDice = (TLRPC.TL_inputMediaStakeDice) tL_messages_sendMedia.media;
                    final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment != null) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$performSendMessageRequest$67(safeLastFragment, tL_inputMediaStakeDice, tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
                            }
                        });
                        return;
                    }
                }
            }
        }
        if (tLObject instanceof TLRPC.TL_messages_editMessage) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSendMessageRequest$70(tL_error, message, tLObject2, messageObject, str, z2, tLObject);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSendMessageRequest$80(z2, tL_error, message, tLObject2, messageObject, str, tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$64(TLRPC.Message message, boolean z, TLObject tLObject, DelayedMessage delayedMessage) {
        removeFromSendingMessages(message.f1686id, z);
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            TLRPC.InputMedia inputMedia = tL_messages_sendMedia.media;
            if ((inputMedia instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia instanceof TLRPC.TL_inputMediaDocument)) {
                tL_messages_sendMedia.media = delayedMessage.inputUploadMedia;
            }
        } else if (tLObject instanceof TLRPC.TL_messages_editMessage) {
            TLRPC.TL_messages_editMessage tL_messages_editMessage = (TLRPC.TL_messages_editMessage) tLObject;
            TLRPC.InputMedia inputMedia2 = tL_messages_editMessage.media;
            if ((inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia2 instanceof TLRPC.TL_inputMediaDocument)) {
                tL_messages_editMessage.media = delayedMessage.inputUploadMedia;
            }
        }
        delayedMessage.performMediaUpload = true;
        performSendDelayedMessage(delayedMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$65(TLObject tLObject, MessageObject messageObject, String str, DelayedMessage delayedMessage, boolean z, DelayedMessage delayedMessage2, Object obj, HashMap map, boolean z2, TLRPC.EmojiGameInfo emojiGameInfo, TLRPC.TL_error tL_error) {
        if (emojiGameInfo instanceof TLRPC.TL_emojiGameDiceInfo) {
            String str2 = ((TLRPC.TL_emojiGameDiceInfo) emojiGameInfo).game_hash;
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            TLRPC.InputMedia inputMedia = tL_messages_sendMedia.media;
            if (inputMedia instanceof TLRPC.TL_inputMediaStakeDice) {
                ((TLRPC.TL_inputMediaStakeDice) inputMedia).game_hash = str2;
            }
            lambda$performSendMessageRequest$66(tL_messages_sendMedia, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$67(BaseFragment baseFragment, TLRPC.TL_inputMediaStakeDice tL_inputMediaStakeDice, final TLObject tLObject, final MessageObject messageObject, final String str, final DelayedMessage delayedMessage, final boolean z, final DelayedMessage delayedMessage2, final Object obj, final HashMap map, final boolean z2) {
        new TONIntroActivity.StarsNeededSheet(baseFragment.getContext(), baseFragment.getResourceProvider(), AmountUtils$Amount.fromNano(tL_inputMediaStakeDice.ton_amount, AmountUtils$Currency.TON), false, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda100
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$66(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
            }
        }).show();
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        cancelSendingMessage(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$70(TLRPC.TL_error tL_error, final TLRPC.Message message, TLObject tLObject, MessageObject messageObject, String str, final boolean z, TLObject tLObject2) {
        int i = 0;
        TLRPC.Message message2 = null;
        if (tL_error == null) {
            String str2 = message.attachPath;
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            ArrayList<TLRPC.Update> arrayList = updates.updates;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                TLRPC.Update update = arrayList.get(i);
                if (update instanceof TLRPC.TL_updateEditMessage) {
                    message2 = ((TLRPC.TL_updateEditMessage) update).message;
                    break;
                }
                if (update instanceof TLRPC.TL_updateEditChannelMessage) {
                    message2 = ((TLRPC.TL_updateEditChannelMessage) update).message;
                    break;
                }
                if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
                    message2 = ((TLRPC.TL_updateNewScheduledMessage) update).message;
                    break;
                } else {
                    if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
                        QuickRepliesController.getInstance(this.currentAccount).processUpdate(update, MessageObject.getQuickReplyName(message), MessageObject.getQuickReplyId(message));
                        message2 = ((TLRPC.TL_updateQuickReplyMessage) update).message;
                        break;
                    }
                    i++;
                }
            }
            TLRPC.Message message3 = message2;
            if (message3 != null) {
                ImageLoader.saveMessageThumbs(message3);
                updateMediaPaths(messageObject, message3, message3.f1686id, str, false);
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda104
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSendMessageRequest$69(updates, message, z);
                }
            });
            return;
        }
        AlertsCreator.processError(this.currentAccount, tL_error, null, tLObject2, new Object[0]);
        removeFromSendingMessages(message.f1686id, z);
        revertEditingMessageObject(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$69(TLRPC.Updates updates, final TLRPC.Message message, final boolean z) {
        getMessagesController().processUpdates(updates, false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$68(message, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$68(TLRPC.Message message, boolean z) {
        processSentMessage(message.f1686id);
        removeFromSendingMessages(message.f1686id, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$71(TLRPC.TL_updateShortSentMessage tL_updateShortSentMessage) {
        getMessagesController().processNewDifferenceParams(-1, tL_updateShortSentMessage.pts, tL_updateShortSentMessage.date, tL_updateShortSentMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$72(TLRPC.TL_updateNewMessage tL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tL_updateNewMessage.pts, -1, tL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$73(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tL_updateNewChannelMessage.pts, tL_updateNewChannelMessage.pts_count, tL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$74(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage, long j) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(tL_updateNewChannelMessage.message.f1686id));
        getMessagesStorage().updatePinnedMessages(-j, arrayList, true, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$75(TLRPC.Updates updates) {
        getMessagesController().processUpdates(updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$77(ArrayList arrayList, final boolean z, final boolean z2, final TLRPC.Message message, final ArrayList arrayList2, final ArrayList arrayList3, final int i) {
        getMessagesStorage().putMessages(arrayList, true, false, false, 0, false, !z ? 1 : 0, 0L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$76(z2, message, arrayList2, z, arrayList3, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$76(boolean z, TLRPC.Message message, ArrayList arrayList, boolean z2, ArrayList arrayList2, int i) {
        boolean z3;
        int i2;
        if (!z || message == null) {
            z3 = false;
            i2 = 0;
        } else {
            i2 = message.f1686id;
            z3 = false;
        }
        MessagesController messagesController = getMessagesController();
        long j = message.dialog_id;
        if (!z2 && z) {
            z3 = true;
        }
        messagesController.deleteMessages(arrayList, null, null, j, false, z2 ? 1 : 0, false, 0L, null, 0, z3, i2);
        getMessagesController().updateInterfaceWithMessages(message.dialog_id, arrayList2, z ? 1 : 0);
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        processSentMessage(i);
        removeFromSendingMessages(i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x04b6  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performSendMessageRequest$80(final boolean z, TLRPC.TL_error tL_error, final TLRPC.Message message, TLObject tLObject, MessageObject messageObject, String str, TLObject tLObject2) {
        MessageObject messageObject2;
        ?? r2;
        final TLRPC.Message message2;
        int i;
        TLObject tLObject3;
        boolean z2;
        SendMessagesHelper sendMessagesHelper;
        String str2;
        long j;
        ArrayList arrayList;
        SendMessagesHelper sendMessagesHelper2;
        int i2;
        Long l;
        final boolean z3;
        int mediaExistanceFlags;
        final SendMessagesHelper sendMessagesHelper3;
        boolean z4;
        boolean z5;
        int i3;
        Long l2;
        TLRPC.MessageReplyHeader messageReplyHeader;
        LongSparseArray longSparseArray;
        final SendMessagesHelper sendMessagesHelper4;
        boolean z6;
        SendMessagesHelper sendMessagesHelper5;
        boolean z7;
        if (tL_error == null) {
            Long l3 = 0L;
            int i4 = message.f1686id;
            ArrayList arrayList2 = new ArrayList();
            boolean z8 = message.date == 2147483646;
            i = 2;
            if (tLObject instanceof TLRPC.TL_updateShortSentMessage) {
                final TLRPC.TL_updateShortSentMessage tL_updateShortSentMessage = (TLRPC.TL_updateShortSentMessage) tLObject;
                j = 0;
                arrayList = arrayList2;
                updateMediaPaths(messageObject, null, tL_updateShortSentMessage.f1824id, null, false);
                mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                int i5 = tL_updateShortSentMessage.f1824id;
                message.f1686id = i5;
                message.local_id = i5;
                message.date = tL_updateShortSentMessage.date;
                message.entities = tL_updateShortSentMessage.entities;
                message.out = tL_updateShortSentMessage.out;
                if ((tL_updateShortSentMessage.flags & 33554432) != 0) {
                    message.ttl_period = tL_updateShortSentMessage.ttl_period;
                    message.flags |= 33554432;
                }
                TLRPC.MessageMedia messageMedia = tL_updateShortSentMessage.media;
                if (messageMedia != null) {
                    message.media = messageMedia;
                    message.flags |= 512;
                    ImageLoader.saveMessageThumbs(message);
                }
                TLRPC.MessageMedia messageMedia2 = tL_updateShortSentMessage.media;
                if (((messageMedia2 instanceof TLRPC.TL_messageMediaGame) || (messageMedia2 instanceof TLRPC.TL_messageMediaInvoice)) && !TextUtils.isEmpty(tL_updateShortSentMessage.message)) {
                    message.message = tL_updateShortSentMessage.message;
                }
                if (!message.entities.isEmpty()) {
                    message.flags |= 128;
                }
                Integer numValueOf = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(message.dialog_id));
                if (numValueOf == null) {
                    z7 = true;
                    numValueOf = Integer.valueOf(getMessagesStorage().getDialogReadMax(message.out, message.dialog_id));
                    getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(message.dialog_id), numValueOf);
                } else {
                    z7 = true;
                }
                message.unread = numValueOf.intValue() < message.f1686id ? z7 : false;
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda69
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequest$71(tL_updateShortSentMessage);
                    }
                });
                arrayList.add(message);
                sendMessagesHelper2 = this;
                messageObject2 = messageObject;
                i2 = i4;
                l = null;
                z3 = false;
            } else {
                j = 0;
                arrayList = arrayList2;
                if (tLObject instanceof TLRPC.Updates) {
                    final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
                    ArrayList<TLRPC.Update> arrayList3 = updates.updates;
                    boolean z9 = z;
                    TLRPC.Message message3 = null;
                    int i6 = 0;
                    LongSparseArray longSparseArray2 = null;
                    while (i6 < arrayList3.size()) {
                        TLRPC.Update update = arrayList3.get(i6);
                        if (update instanceof TLRPC.TL_updateNewMessage) {
                            final TLRPC.TL_updateNewMessage tL_updateNewMessage = (TLRPC.TL_updateNewMessage) update;
                            TLRPC.Message message4 = tL_updateNewMessage.message;
                            z5 = z8;
                            if (message4.action != null) {
                                i3 = i4;
                            } else {
                                arrayList.add(message4);
                                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda70
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$performSendMessageRequest$72(tL_updateNewMessage);
                                    }
                                });
                                arrayList3.remove(i6);
                                i6--;
                                i3 = i4;
                                message3 = message4;
                            }
                            l2 = l3;
                        } else {
                            z5 = z8;
                            if (update instanceof TLRPC.TL_updateNewChannelMessage) {
                                final TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage = (TLRPC.TL_updateNewChannelMessage) update;
                                final long updateChannelId = MessagesController.getUpdateChannelId(tL_updateNewChannelMessage);
                                i3 = i4;
                                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(updateChannelId));
                                if (!(chat == null || chat.megagroup) || (messageReplyHeader = tL_updateNewChannelMessage.message.reply_to) == null || (messageReplyHeader.reply_to_top_id == 0 && messageReplyHeader.reply_to_msg_id == 0)) {
                                    l2 = l3;
                                } else {
                                    if (longSparseArray2 == null) {
                                        longSparseArray2 = new LongSparseArray();
                                    }
                                    l2 = l3;
                                    long dialogId = MessageObject.getDialogId(tL_updateNewChannelMessage.message);
                                    SparseArray sparseArray = (SparseArray) longSparseArray2.get(dialogId);
                                    if (sparseArray == null) {
                                        sparseArray = new SparseArray();
                                        longSparseArray2.put(dialogId, sparseArray);
                                    }
                                    TLRPC.MessageReplyHeader messageReplyHeader2 = tL_updateNewChannelMessage.message.reply_to;
                                    int i7 = messageReplyHeader2.reply_to_top_id;
                                    if (i7 == 0) {
                                        i7 = messageReplyHeader2.reply_to_msg_id;
                                    }
                                    TLRPC.MessageReplies tL_messageReplies = (TLRPC.MessageReplies) sparseArray.get(i7);
                                    if (tL_messageReplies == null) {
                                        tL_messageReplies = new TLRPC.TL_messageReplies();
                                        sparseArray.put(i7, tL_messageReplies);
                                    }
                                    TLRPC.Peer peer = tL_updateNewChannelMessage.message.from_id;
                                    if (peer != null) {
                                        longSparseArray = longSparseArray2;
                                        tL_messageReplies.recent_repliers.add(0, peer);
                                    } else {
                                        longSparseArray = longSparseArray2;
                                    }
                                    tL_messageReplies.replies++;
                                    longSparseArray2 = longSparseArray;
                                }
                                TLRPC.Message message5 = tL_updateNewChannelMessage.message;
                                arrayList.add(message5);
                                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda71
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$performSendMessageRequest$73(tL_updateNewChannelMessage);
                                    }
                                });
                                arrayList3.remove(i6);
                                i6--;
                                if (tL_updateNewChannelMessage.message.pinned) {
                                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda72
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$performSendMessageRequest$74(tL_updateNewChannelMessage, updateChannelId);
                                        }
                                    });
                                }
                                message3 = message5;
                            } else {
                                i3 = i4;
                                l2 = l3;
                                if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
                                    TLRPC.TL_updateNewScheduledMessage tL_updateNewScheduledMessage = (TLRPC.TL_updateNewScheduledMessage) update;
                                    int i8 = 0;
                                    while (true) {
                                        if (i8 >= arrayList.size()) {
                                            break;
                                        }
                                        if (((TLRPC.Message) arrayList.get(i8)).f1686id == tL_updateNewScheduledMessage.message.f1686id) {
                                            arrayList.remove(i8);
                                            break;
                                        }
                                        i8++;
                                    }
                                    message3 = tL_updateNewScheduledMessage.message;
                                    arrayList.add(message3);
                                    arrayList3.remove(i6);
                                    i6--;
                                    z9 = true;
                                } else if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
                                    QuickRepliesController.getInstance(this.currentAccount).processUpdate(update, messageObject.getQuickReplyName(), messageObject.getQuickReplyId());
                                    message3 = ((TLRPC.TL_updateQuickReplyMessage) update).message;
                                    arrayList.add(message3);
                                    arrayList3.remove(i6);
                                    i6--;
                                } else if (update instanceof TLRPC.TL_updateDeleteScheduledMessages) {
                                    TLRPC.TL_updateDeleteScheduledMessages tL_updateDeleteScheduledMessages = (TLRPC.TL_updateDeleteScheduledMessages) update;
                                    if (messageObject.getDialogId() == DialogObject.getPeerDialogId(tL_updateDeleteScheduledMessages.peer)) {
                                        ArrayList arrayList4 = tL_updateDeleteScheduledMessages.messages;
                                        int size = arrayList4.size();
                                        int i9 = 0;
                                        while (i9 < size) {
                                            Object obj = arrayList4.get(i9);
                                            i9++;
                                            int iIntValue = ((Integer) obj).intValue();
                                            ArrayList arrayList5 = arrayList4;
                                            int i10 = 0;
                                            while (true) {
                                                if (i10 >= arrayList.size()) {
                                                    break;
                                                }
                                                if (((TLRPC.Message) arrayList.get(i10)).f1686id == iIntValue) {
                                                    arrayList.remove(i10);
                                                    break;
                                                }
                                                i10++;
                                            }
                                            arrayList4 = arrayList5;
                                        }
                                        arrayList3.remove(i6);
                                        i6--;
                                    }
                                }
                            }
                            z9 = false;
                        }
                        i6++;
                        z8 = z5;
                        i4 = i3;
                        l3 = l2;
                    }
                    boolean z10 = z8;
                    i2 = i4;
                    l = l3;
                    if (longSparseArray2 != null) {
                        getMessagesStorage().putChannelViews(null, null, longSparseArray2, true);
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray2, Boolean.TRUE);
                    }
                    if (message3 != null) {
                        MessageObject.getDialogId(message3);
                        if (z10 && message3.date != 2147483646) {
                            z9 = false;
                        }
                        ImageLoader.saveMessageThumbs(message3);
                        if (!z9) {
                            Integer numValueOf2 = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(message3.dialog_id));
                            if (numValueOf2 == null) {
                                numValueOf2 = Integer.valueOf(getMessagesStorage().getDialogReadMax(message3.out, message3.dialog_id));
                                getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(message3.dialog_id), numValueOf2);
                            }
                            message3.unread = numValueOf2.intValue() < message3.f1686id;
                        }
                        TLRPC.Message message6 = messageObject.messageOwner;
                        message6.post_author = message3.post_author;
                        if ((message3.flags & 33554432) != 0) {
                            message6.ttl_period = message3.ttl_period;
                            message6.flags |= 33554432;
                        }
                        message6.entities = message3.entities;
                        int i11 = message3.quick_reply_shortcut_id;
                        message6.quick_reply_shortcut_id = i11;
                        if (i11 != 0) {
                            message6.flags |= TLObject.FLAG_30;
                        }
                        TLRPC.Message message7 = message3;
                        updateMediaPaths(messageObject, message7, message3.f1686id, str, false);
                        messageObject2 = messageObject;
                        sendMessagesHelper3 = this;
                        mediaExistanceFlags = messageObject2.getMediaExistanceFlags();
                        message.f1686id = message7.f1686id;
                        z4 = false;
                    } else {
                        sendMessagesHelper3 = this;
                        messageObject2 = messageObject;
                        if (BuildVars.LOGS_ENABLED) {
                            StringBuilder sb = new StringBuilder();
                            for (int i12 = 0; i12 < arrayList3.size(); i12++) {
                                sb.append(arrayList3.get(i12).getClass().getSimpleName());
                                sb.append(", ");
                            }
                            FileLog.m1133d("can't find message in updates " + ((Object) sb));
                        }
                        mediaExistanceFlags = 0;
                        z4 = true;
                    }
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda73
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$performSendMessageRequest$75(updates);
                        }
                    });
                    z2 = z4;
                    z3 = z9;
                    sendMessagesHelper4 = sendMessagesHelper3;
                    if (MessageObject.isLiveLocationMessage(message) && message.via_bot_id == j && TextUtils.isEmpty(message.via_bot_name)) {
                        sendMessagesHelper4.getLocationController().addSharingLocation(message);
                    }
                    if (z2) {
                        sendMessagesHelper4.getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                        message.send_state = 0;
                        long j2 = j;
                        message.errorNewPriceStars = j2;
                        message.errorAllowedPriceStars = j2;
                        if (z != z3) {
                            final ArrayList arrayList6 = new ArrayList();
                            arrayList6.add(Integer.valueOf(i2));
                            final ArrayList arrayList7 = new ArrayList();
                            arrayList7.add(new MessageObject(messageObject2.currentAccount, messageObject2.messageOwner, true, true));
                            final ArrayList arrayList8 = arrayList;
                            final int i13 = i2;
                            message2 = message;
                            sendMessagesHelper4.getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda74
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$performSendMessageRequest$77(arrayList8, z, z3, message, arrayList6, arrayList7, i13);
                                }
                            });
                            sendMessagesHelper5 = this;
                            z6 = z;
                        } else {
                            message2 = message;
                            final int i14 = i2;
                            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i14), Integer.valueOf(message2.f1686id), message2, Long.valueOf(message2.dialog_id), l, Integer.valueOf(mediaExistanceFlags), Boolean.valueOf(z));
                            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i14), Integer.valueOf(message2.f1686id), message2, Long.valueOf(message2.dialog_id), l, Integer.valueOf(mediaExistanceFlags), Boolean.valueOf(z));
                            final int i15 = mediaExistanceFlags;
                            final SendMessagesHelper sendMessagesHelper6 = this;
                            final boolean z11 = z;
                            final ArrayList arrayList9 = arrayList;
                            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda75
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$performSendMessageRequest$79(z11, message2, i14, arrayList9, i15);
                                }
                            });
                            sendMessagesHelper5 = sendMessagesHelper6;
                            z6 = z11;
                        }
                    } else {
                        z6 = z;
                        message2 = message;
                        sendMessagesHelper5 = sendMessagesHelper4;
                    }
                    tLObject3 = tLObject2;
                    sendMessagesHelper = sendMessagesHelper5;
                    r2 = z6;
                } else {
                    sendMessagesHelper2 = this;
                    messageObject2 = messageObject;
                    i2 = i4;
                    l = null;
                    z3 = z;
                    mediaExistanceFlags = 0;
                }
            }
            z2 = false;
            sendMessagesHelper4 = sendMessagesHelper2;
            if (MessageObject.isLiveLocationMessage(message)) {
                sendMessagesHelper4.getLocationController().addSharingLocation(message);
            }
            if (z2) {
            }
            tLObject3 = tLObject2;
            sendMessagesHelper = sendMessagesHelper5;
            r2 = z6;
        } else {
            SendMessagesHelper sendMessagesHelper7 = this;
            messageObject2 = messageObject;
            r2 = z;
            message2 = message;
            i = 2;
            tLObject3 = tLObject2;
            AlertsCreator.processError(sendMessagesHelper7.currentAccount, tL_error, null, tLObject3, new Object[0]);
            z2 = true;
            sendMessagesHelper = sendMessagesHelper7;
        }
        if (z2) {
            sendMessagesHelper.getMessagesStorage().markMessageAsSendError(message2, r2);
            message2.send_state = i;
            if (tL_error != null && (str2 = tL_error.text) != null && str2.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
                StarsController.getInstance(sendMessagesHelper.currentAccount);
                message2.errorAllowedPriceStars = StarsController.getAllowedPaidStars(tLObject3);
                message2.errorNewPriceStars = Long.parseLong(tL_error.text.substring(23));
                StarsController.getInstance(sendMessagesHelper.currentAccount).showPriceChangedToast(Arrays.asList(messageObject2));
                sendMessagesHelper.getMessagesStorage().updateMessageCustomParams(MessageObject.getDialogId(message2), message2);
            }
            sendMessagesHelper.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(message2.f1686id));
            sendMessagesHelper.processSentMessage(message2.f1686id);
            sendMessagesHelper.removeFromSendingMessages(message2.f1686id, r2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$79(final boolean z, final TLRPC.Message message, final int i, ArrayList arrayList, final int i2) {
        int i3 = (message.quick_reply_shortcut_id == 0 && message.quick_reply_shortcut == null) ? z ? 1 : 0 : 5;
        getMessagesStorage().updateMessageStateAndId(message.random_id, MessageObject.getPeerId(message.peer_id), Integer.valueOf(i), message.f1686id, 0, false, z ? 1 : 0, message.quick_reply_shortcut_id);
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i3, message.quick_reply_shortcut_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$78(message, i, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$78(TLRPC.Message message, int i, int i2, boolean z) {
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(message.f1686id), message, Long.valueOf(message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i), Integer.valueOf(message.f1686id), message, Long.valueOf(message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$83(final TLRPC.Message message) {
        final int i = message.f1686id;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$82(message, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$82(TLRPC.Message message, int i) {
        message.send_state = 0;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByAck, Integer.valueOf(i));
    }

    private boolean removeCoverFromRequest(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia = ((TLRPC.TL_messages_sendMedia) tLObject).media;
            if (inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument) {
                TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = (TLRPC.TL_inputMediaUploadedDocument) inputMedia;
                tL_inputMediaUploadedDocument.video_cover = null;
                tL_inputMediaUploadedDocument.flags &= -65;
                return true;
            }
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                tL_inputMediaDocument.video_cover = null;
                tL_inputMediaDocument.flags &= -9;
                return true;
            }
            if (!(inputMedia instanceof TLRPC.TL_inputMediaDocumentExternal)) {
                return false;
            }
            TLRPC.TL_inputMediaDocumentExternal tL_inputMediaDocumentExternal = (TLRPC.TL_inputMediaDocumentExternal) inputMedia;
            tL_inputMediaDocumentExternal.video_cover = null;
            tL_inputMediaDocumentExternal.flags &= -5;
            return true;
        }
        if (!(tLObject instanceof TLRPC.TL_messages_editMessage)) {
            return false;
        }
        TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_editMessage) tLObject).media;
        if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
            TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument2 = (TLRPC.TL_inputMediaUploadedDocument) inputMedia2;
            tL_inputMediaUploadedDocument2.video_cover = null;
            tL_inputMediaUploadedDocument2.flags &= -65;
            return true;
        }
        if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
            TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) inputMedia2;
            tL_inputMediaDocument2.video_cover = null;
            tL_inputMediaDocument2.flags &= -9;
            return true;
        }
        if (!(inputMedia2 instanceof TLRPC.TL_inputMediaDocumentExternal)) {
            return false;
        }
        TLRPC.TL_inputMediaDocumentExternal tL_inputMediaDocumentExternal2 = (TLRPC.TL_inputMediaDocumentExternal) inputMedia2;
        tL_inputMediaDocumentExternal2.video_cover = null;
        tL_inputMediaDocumentExternal2.flags &= -5;
        return true;
    }

    private void updateMediaPaths(MessageObject messageObject, TLRPC.Message message, int i, String str, boolean z) {
        updateMediaPaths(messageObject, message, i, Collections.singletonList(str), z, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x07c3  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0877  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0894  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x08b7  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0921  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0975  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x097c  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0a14  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0a17  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x08cb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateMediaPaths(MessageObject messageObject, TLRPC.Message message, int i, List<String> list, boolean z, int i2) {
        List<String> list2;
        String str;
        boolean z2;
        SendMessagesHelper sendMessagesHelper;
        MessageObject messageObject2;
        TLRPC.Message message2;
        boolean z3;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia2;
        SendMessagesHelper sendMessagesHelper2;
        String str2;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia3;
        TLRPC.Message message3;
        TLRPC.Photo photo;
        String str3;
        byte[] bArr;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        TLRPC.PhotoSize closestPhotoSizeWithSize3;
        TLRPC.FileLocation fileLocation;
        TLRPC.FileLocation fileLocation2;
        int i3;
        byte[] bArr2;
        MessageObject messageObject3;
        TLRPC.Message message4;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia4;
        String str4;
        TLRPC.Photo photo2;
        String str5;
        TLRPC.MessageMedia messageMedia;
        String str6;
        String str7;
        File file;
        VideoEditedInfo videoEditedInfo;
        boolean z4;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia5;
        TLRPC.Message message5;
        TLRPC.PhotoSize photoSize;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia6;
        TLRPC.PhotoSize photoSize2;
        String str8;
        File file2;
        boolean z5;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia7;
        TLRPC.PhotoSize closestPhotoSizeWithSize4;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia8;
        TLObject tLObject;
        TLRPC.PhotoSize closestPhotoSizeWithSize5;
        TLObject tLObject2;
        TLRPC.Document document;
        TLRPC.Photo photo3;
        TLRPC.PhotoSize closestPhotoSizeWithSize6;
        TLRPC.MessageMedia messageMedia2;
        TLRPC.WebPage webPage;
        TLRPC.Document document2;
        TLRPC.MessageMedia messageMedia3;
        TLRPC.WebPage webPage2;
        TLRPC.Photo photo4;
        TLRPC.MessageMedia messageMedia4;
        TLRPC.Document document3;
        TLRPC.MessageMedia messageMedia5;
        TLRPC.Photo photo5;
        boolean z6;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia9;
        String string;
        SendMessagesHelper sendMessagesHelper3 = this;
        TLRPC.Message message6 = messageObject.messageOwner;
        if (list.isEmpty() || Math.max(0, i2) >= list.size()) {
            list2 = list;
            str = null;
        } else {
            list2 = list;
            str = list2.get(Math.max(0, i2));
        }
        TLRPC.MessageMedia messageMedia6 = message == null ? null : message.media;
        TLRPC.MessageMedia messageMedia7 = message6 == null ? null : message6.media;
        TLRPC.MessageMedia messageMedia8 = message6.media;
        if (messageMedia8 != null) {
            if (messageMedia8.storyItem != null) {
                message.media = messageMedia8;
            } else if (messageObject.isLiveLocation()) {
                TLRPC.MessageMedia messageMedia9 = message.media;
                if (messageMedia9 instanceof TLRPC.TL_messageMediaGeoLive) {
                    message6.media.period = messageMedia9.period;
                } else if (messageObject.isDice()) {
                    TLRPC.TL_messageMediaDice tL_messageMediaDice = (TLRPC.TL_messageMediaDice) message6.media;
                    TLRPC.TL_messageMediaDice tL_messageMediaDice2 = (TLRPC.TL_messageMediaDice) message.media;
                    tL_messageMediaDice.value = tL_messageMediaDice2.value;
                    tL_messageMediaDice.flags = tL_messageMediaDice2.flags;
                    tL_messageMediaDice.game_outcome = tL_messageMediaDice2.game_outcome;
                    StarsController.getInstance(sendMessagesHelper3.currentAccount, true).invalidateBalance();
                } else {
                    TLRPC.MessageMedia messageMedia10 = message6.media;
                    TLRPC.Photo photo6 = messageMedia10.photo;
                    if (photo6 != null) {
                        closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(photo6.sizes, 40);
                        closestPhotoSizeWithSize6 = (message == null || (messageMedia5 = message.media) == null || (photo5 = messageMedia5.photo) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(photo5.sizes, 40);
                        tLObject = message6.media.photo;
                    } else {
                        TLRPC.Document document4 = messageMedia10.document;
                        if (document4 != null) {
                            closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document4.thumbs, 40);
                            closestPhotoSizeWithSize6 = (message == null || (messageMedia4 = message.media) == null || (document3 = messageMedia4.document) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(document3.thumbs, 40);
                            tLObject = message6.media.document;
                        } else {
                            TLRPC.WebPage webPage3 = messageMedia10.webpage;
                            if (webPage3 != null) {
                                TLRPC.Photo photo7 = webPage3.photo;
                                if (photo7 != null) {
                                    closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(photo7.sizes, 40);
                                    closestPhotoSizeWithSize6 = (message == null || (messageMedia3 = message.media) == null || (webPage2 = messageMedia3.webpage) == null || (photo4 = webPage2.photo) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(photo4.sizes, 40);
                                    tLObject = message6.media.webpage.photo;
                                } else {
                                    TLRPC.Document document5 = webPage3.document;
                                    if (document5 != null) {
                                        closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document5.thumbs, 40);
                                        closestPhotoSizeWithSize6 = (message == null || (messageMedia2 = message.media) == null || (webPage = messageMedia2.webpage) == null || (document2 = webPage.document) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 40);
                                        tLObject = message6.media.webpage.document;
                                    }
                                }
                            } else {
                                if ((messageMedia10 instanceof TLRPC.TL_messageMediaPaidMedia) && (messageMedia6 instanceof TLRPC.TL_messageMediaPaidMedia)) {
                                    TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia10;
                                    TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia2 = (TLRPC.TL_messageMediaPaidMedia) messageMedia6;
                                    if (!tL_messageMediaPaidMedia.extended_media.isEmpty() && !tL_messageMediaPaidMedia2.extended_media.isEmpty()) {
                                        if (i2 == -1) {
                                            int i4 = 0;
                                            while (i4 < tL_messageMediaPaidMedia.extended_media.size()) {
                                                sendMessagesHelper3.updateMediaPaths(messageObject, message, i, list2, z, i4);
                                                i4++;
                                                sendMessagesHelper3 = sendMessagesHelper3;
                                                list2 = list;
                                            }
                                        } else {
                                            z2 = z;
                                            sendMessagesHelper = sendMessagesHelper3;
                                            messageObject2 = messageObject;
                                            z5 = tL_messageMediaPaidMedia2.extended_media.size() > 1;
                                            if (i2 >= 0 && i2 < tL_messageMediaPaidMedia2.extended_media.size()) {
                                                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia2.extended_media.get(i2);
                                                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                                    TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia10 = (TLRPC.TL_messageExtendedMedia) messageExtendedMedia;
                                                    tL_messageExtendedMedia7 = tL_messageExtendedMedia10;
                                                    messageMedia6 = tL_messageExtendedMedia10.media;
                                                } else {
                                                    tL_messageExtendedMedia7 = null;
                                                }
                                                TLRPC.MessageExtendedMedia messageExtendedMedia2 = tL_messageMediaPaidMedia.extended_media.get(i2);
                                                if (messageExtendedMedia2 instanceof TLRPC.TL_messageExtendedMedia) {
                                                    TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia11 = (TLRPC.TL_messageExtendedMedia) messageExtendedMedia2;
                                                    messageMedia7 = tL_messageExtendedMedia11.media;
                                                    TLRPC.Photo photo8 = messageMedia7.photo;
                                                    if (photo8 != null) {
                                                        closestPhotoSizeWithSize5 = FileLoader.getClosestPhotoSizeWithSize(photo8.sizes, 40);
                                                        TLRPC.PhotoSize closestPhotoSizeWithSize7 = (messageMedia6 == null || (photo3 = messageMedia6.photo) == null) ? closestPhotoSizeWithSize5 : FileLoader.getClosestPhotoSizeWithSize(photo3.sizes, 40);
                                                        tLObject2 = messageMedia7.photo;
                                                        closestPhotoSizeWithSize = closestPhotoSizeWithSize7;
                                                    } else {
                                                        TLRPC.Document document6 = messageMedia7.document;
                                                        if (document6 != null) {
                                                            closestPhotoSizeWithSize5 = FileLoader.getClosestPhotoSizeWithSize(document6.thumbs, 40);
                                                            closestPhotoSizeWithSize = (messageMedia6 == null || (document = messageMedia6.document) == null) ? closestPhotoSizeWithSize5 : FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 40);
                                                            tLObject2 = messageMedia7.document;
                                                        } else {
                                                            closestPhotoSizeWithSize5 = null;
                                                            closestPhotoSizeWithSize = null;
                                                            tLObject2 = null;
                                                        }
                                                    }
                                                    TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia12 = tL_messageExtendedMedia7;
                                                    tL_messageExtendedMedia8 = tL_messageExtendedMedia11;
                                                    closestPhotoSizeWithSize4 = closestPhotoSizeWithSize5;
                                                    tLObject = tLObject2;
                                                    tL_messageExtendedMedia2 = tL_messageExtendedMedia12;
                                                } else {
                                                    tL_messageExtendedMedia2 = tL_messageExtendedMedia7;
                                                    closestPhotoSizeWithSize4 = null;
                                                    tL_messageExtendedMedia8 = null;
                                                    tLObject = null;
                                                    closestPhotoSizeWithSize = null;
                                                }
                                            }
                                        }
                                    }
                                    return;
                                }
                                if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) && (closestPhotoSizeWithSize4 instanceof TLRPC.TL_photoStrippedSize)) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("stripped");
                                    z6 = z5;
                                    sb.append(FileRefController.getKeyForParentObject(messageObject2));
                                    String string2 = sb.toString();
                                    if (message != null) {
                                        string = "stripped" + FileRefController.getKeyForParentObject(message);
                                        message2 = message6;
                                        tL_messageExtendedMedia9 = tL_messageExtendedMedia8;
                                    } else {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("strippedmessage");
                                        sb2.append(i);
                                        sb2.append("_");
                                        message2 = message6;
                                        tL_messageExtendedMedia9 = tL_messageExtendedMedia8;
                                        sb2.append(messageObject2.getChannelId());
                                        sb2.append("_");
                                        sb2.append(messageObject2.scheduled);
                                        string = sb2.toString();
                                    }
                                    ImageLoader.getInstance().replaceImageInCache(string2, string, ImageLocation.getForObject(closestPhotoSizeWithSize, tLObject), z2);
                                } else {
                                    z6 = z5;
                                    message2 = message6;
                                    tL_messageExtendedMedia9 = tL_messageExtendedMedia8;
                                }
                                z3 = z6;
                                tL_messageExtendedMedia = tL_messageExtendedMedia9;
                            }
                        }
                    }
                    z2 = z;
                    closestPhotoSizeWithSize = closestPhotoSizeWithSize6;
                    tL_messageExtendedMedia2 = null;
                    sendMessagesHelper = sendMessagesHelper3;
                    messageObject2 = messageObject;
                    z5 = false;
                    tL_messageExtendedMedia8 = null;
                    if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
                        z6 = z5;
                        message2 = message6;
                        tL_messageExtendedMedia9 = tL_messageExtendedMedia8;
                        z3 = z6;
                        tL_messageExtendedMedia = tL_messageExtendedMedia9;
                    }
                }
            }
            z2 = z;
            sendMessagesHelper = sendMessagesHelper3;
            messageObject2 = messageObject;
            z5 = false;
            closestPhotoSizeWithSize4 = null;
            tL_messageExtendedMedia8 = null;
            tLObject = null;
            closestPhotoSizeWithSize = null;
            tL_messageExtendedMedia2 = null;
            if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
            }
        }
        z2 = z;
        sendMessagesHelper = sendMessagesHelper3;
        messageObject2 = messageObject;
        message2 = message6;
        z3 = false;
        tL_messageExtendedMedia = null;
        closestPhotoSizeWithSize = null;
        tL_messageExtendedMedia2 = null;
        TLRPC.MessageMedia messageMedia11 = messageMedia6;
        if (message != null) {
            boolean z7 = z3;
            if ((messageMedia11 instanceof TLRPC.TL_messageMediaPhoto) && messageMedia11.photo != null && (messageMedia7 instanceof TLRPC.TL_messageMediaPhoto) && messageMedia7.photo != null) {
                if (messageMedia11.ttl_seconds != 0 || messageObject2.scheduled) {
                    tL_messageExtendedMedia5 = tL_messageExtendedMedia;
                    message5 = message2;
                    photoSize = closestPhotoSizeWithSize;
                    tL_messageExtendedMedia6 = tL_messageExtendedMedia2;
                } else {
                    int i5 = messageObject2.sentHighQuality ? 6 : 0;
                    MessagesStorage messagesStorage = sendMessagesHelper.getMessagesStorage();
                    message5 = message2;
                    TLRPC.Photo photo9 = messageMedia11.photo;
                    tL_messageExtendedMedia5 = tL_messageExtendedMedia;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("sent_");
                    photoSize = closestPhotoSizeWithSize;
                    tL_messageExtendedMedia6 = tL_messageExtendedMedia2;
                    sb3.append(message.peer_id.channel_id);
                    sb3.append("_");
                    sb3.append(message.f1686id);
                    sb3.append("_");
                    sb3.append(DialogObject.getPeerDialogId(message.peer_id));
                    sb3.append("_");
                    sb3.append(1);
                    sb3.append("_");
                    sb3.append(MessageObject.getMediaSize(messageMedia7));
                    messagesStorage.putSentFile(str, photo9, i5, sb3.toString());
                }
                if (messageMedia7.photo.sizes.size() == 1 && (((TLRPC.PhotoSize) messageMedia7.photo.sizes.get(0)).location instanceof TLRPC.TL_fileLocationUnavailable)) {
                    messageMedia7.photo.sizes = messageMedia11.photo.sizes;
                } else {
                    int i6 = 0;
                    while (i6 < messageMedia7.photo.sizes.size()) {
                        TLRPC.PhotoSize photoSize3 = (TLRPC.PhotoSize) messageMedia7.photo.sizes.get(i6);
                        if (photoSize3 == null || photoSize3.location == null || photoSize3.type == null) {
                            photoSize2 = photoSize;
                        } else {
                            int i7 = 0;
                            while (i7 < messageMedia11.photo.sizes.size()) {
                                TLRPC.PhotoSize photoSize4 = (TLRPC.PhotoSize) messageMedia11.photo.sizes.get(i7);
                                if (photoSize4 == null || photoSize4.location == null || (photoSize4 instanceof TLRPC.TL_photoSizeEmpty) || (str8 = photoSize4.type) == null || !((photoSize3.location.volume_id == -2147483648L && str8.equals(photoSize3.type)) || (photoSize4.f1694w == photoSize3.f1694w && photoSize4.f1693h == photoSize3.f1693h))) {
                                    i7++;
                                    sendMessagesHelper = this;
                                } else {
                                    String str9 = photoSize3.location.volume_id + "_" + photoSize3.location.local_id;
                                    String str10 = photoSize4.location.volume_id + "_" + photoSize4.location.local_id;
                                    if (!str9.equals(str10)) {
                                        File file3 = new File(FileLoader.getDirectory(4), str9 + ".jpg");
                                        if (messageMedia11.ttl_seconds == 0 && ((messageMedia11.photo.sizes.size() == 1 || photoSize4.f1694w > 90 || photoSize4.f1693h > 90) && !z7)) {
                                            file2 = FileLoader.getInstance(sendMessagesHelper.currentAccount).getPathToAttach(photoSize4);
                                        } else {
                                            file2 = new File(FileLoader.getDirectory(4), str10 + ".jpg");
                                        }
                                        file3.renameTo(file2);
                                        ImageLoader.getInstance().replaceImageInCache(str9, str10, ImageLocation.getForPhoto(photoSize4, messageMedia11.photo), z2);
                                        photoSize3.location = photoSize4.location;
                                        photoSize3.size = photoSize4.size;
                                    }
                                    photoSize2 = photoSize;
                                }
                            }
                            String str11 = photoSize3.location.volume_id + "_" + photoSize3.location.local_id;
                            new File(FileLoader.getDirectory(4), str11 + ".jpg").delete();
                            if ("s".equals(photoSize3.type) && photoSize != null) {
                                photoSize2 = photoSize;
                                messageMedia7.photo.sizes.set(i6, photoSize2);
                                ImageLocation forPhoto = ImageLocation.getForPhoto(photoSize2, messageMedia11.photo);
                                ImageLoader.getInstance().replaceImageInCache(str11, forPhoto.getKey(message, null, false), forPhoto, z2);
                            }
                        }
                        i6++;
                        sendMessagesHelper = this;
                        photoSize = photoSize2;
                    }
                }
                if (!z7) {
                    TLRPC.Message message7 = message5;
                    message7.message = message.message;
                    message.attachPath = message7.attachPath;
                } else if (tL_messageExtendedMedia5 != null && tL_messageExtendedMedia6 != null) {
                    tL_messageExtendedMedia5.attachPath = tL_messageExtendedMedia6.attachPath;
                }
                TLRPC.Photo photo10 = messageMedia7.photo;
                TLRPC.Photo photo11 = messageMedia11.photo;
                photo10.f1692id = photo11.f1692id;
                photo10.dc_id = photo11.dc_id;
                photo10.access_hash = photo11.access_hash;
                return;
            }
            if ((messageMedia11 instanceof TLRPC.TL_messageMediaDocument) && messageMedia11.document != null && (messageMedia7 instanceof TLRPC.TL_messageMediaDocument) && messageMedia7.document != null) {
                if (messageMedia11.ttl_seconds == 0 && ((videoEditedInfo = messageObject2.videoEditedInfo) == null || (videoEditedInfo.mediaEntities == null && TextUtils.isEmpty(videoEditedInfo.paintPath) && messageObject2.videoEditedInfo.cropState == null))) {
                    boolean zIsVideoMessage = MessageObject.isVideoMessage(message);
                    if ((zIsVideoMessage || MessageObject.isGifMessage(message)) && MessageObject.isGifDocument(messageMedia11.document) == MessageObject.isGifDocument(messageMedia7.document)) {
                        if (messageObject2.scheduled) {
                            sendMessagesHelper2 = this;
                            z4 = zIsVideoMessage;
                            str2 = "s";
                            tL_messageExtendedMedia3 = tL_messageExtendedMedia;
                        } else {
                            sendMessagesHelper2 = this;
                            z4 = zIsVideoMessage;
                            MessageObject messageObject4 = new MessageObject(sendMessagesHelper2.currentAccount, message, false, false);
                            MessagesStorage messagesStorage2 = sendMessagesHelper2.getMessagesStorage();
                            TLRPC.Document document7 = messageMedia11.document;
                            tL_messageExtendedMedia3 = tL_messageExtendedMedia;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("sent_");
                            str2 = "s";
                            sb4.append(message.peer_id.channel_id);
                            sb4.append("_");
                            sb4.append(message.f1686id);
                            sb4.append("_");
                            sb4.append(DialogObject.getPeerDialogId(message.peer_id));
                            sb4.append("_");
                            sb4.append(messageObject4.type);
                            sb4.append("_");
                            sb4.append(messageObject4.getSize());
                            messagesStorage2.putSentFile(str, document7, 2, sb4.toString());
                        }
                        if (z4) {
                            message.attachPath = message2.attachPath;
                        }
                    } else {
                        sendMessagesHelper2 = this;
                        str2 = "s";
                        tL_messageExtendedMedia3 = tL_messageExtendedMedia;
                        if (!MessageObject.isVoiceMessage(message) && !MessageObject.isRoundVideoMessage(message) && !messageObject2.scheduled) {
                            MessageObject messageObject5 = new MessageObject(sendMessagesHelper2.currentAccount, message, false, false);
                            MessagesStorage messagesStorage3 = sendMessagesHelper2.getMessagesStorage();
                            TLRPC.Document document8 = messageMedia11.document;
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("sent_");
                            message3 = message2;
                            sb5.append(message.peer_id.channel_id);
                            sb5.append("_");
                            sb5.append(message.f1686id);
                            sb5.append("_");
                            sb5.append(DialogObject.getPeerDialogId(message.peer_id));
                            sb5.append("_");
                            sb5.append(messageObject5.type);
                            sb5.append("_");
                            sb5.append(messageObject5.getSize());
                            messagesStorage3.putSentFile(str, document8, 1, sb5.toString());
                        }
                        photo = messageMedia7.video_cover;
                        if (photo == null && (photo2 = messageMedia11.video_cover) != null) {
                            TLRPC.PhotoSize closestPhotoSizeWithSize8 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 40);
                            if (photo2 != null) {
                                closestPhotoSizeWithSize8 = FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, 40);
                            }
                            if (photo.sizes.size() == 1 && (((TLRPC.PhotoSize) photo.sizes.get(0)).location instanceof TLRPC.TL_fileLocationUnavailable)) {
                                photo.sizes = photo2.sizes;
                            } else {
                                int i8 = 0;
                                while (i8 < photo.sizes.size()) {
                                    TLRPC.PhotoSize photoSize5 = (TLRPC.PhotoSize) photo.sizes.get(i8);
                                    if (photoSize5 == null || photoSize5.location == null || photoSize5.type == null) {
                                        str5 = str;
                                        messageMedia = messageMedia7;
                                    } else {
                                        int i9 = 0;
                                        while (i9 < photo2.sizes.size()) {
                                            TLRPC.PhotoSize photoSize6 = (TLRPC.PhotoSize) photo2.sizes.get(i9);
                                            if (photoSize6 == null || photoSize6.location == null || (photoSize6 instanceof TLRPC.TL_photoSizeEmpty) || (str7 = photoSize6.type) == null) {
                                                str5 = str;
                                                messageMedia = messageMedia7;
                                            } else {
                                                str5 = str;
                                                messageMedia = messageMedia7;
                                                if ((photoSize5.location.volume_id == -2147483648L && str7.equals(photoSize5.type)) || (photoSize6.f1694w == photoSize5.f1694w && photoSize6.f1693h == photoSize5.f1693h)) {
                                                    String str12 = photoSize5.location.volume_id + "_" + photoSize5.location.local_id;
                                                    String str13 = photoSize6.location.volume_id + "_" + photoSize6.location.local_id;
                                                    if (!str12.equals(str13)) {
                                                        File file4 = new File(FileLoader.getDirectory(4), str12 + ".jpg");
                                                        if (messageMedia11.ttl_seconds != 0 || (photo2.sizes.size() != 1 && photoSize6.f1694w <= 90 && photoSize6.f1693h <= 90)) {
                                                            file = new File(FileLoader.getDirectory(4), str13 + ".jpg");
                                                            file4.renameTo(file);
                                                            ImageLoader.getInstance().replaceImageInCache(str12, str13, ImageLocation.getForPhoto(photoSize6, photo2), z);
                                                            photoSize5.location = photoSize6.location;
                                                            photoSize5.size = photoSize6.size;
                                                        } else {
                                                            if (!z7) {
                                                                file = FileLoader.getInstance(sendMessagesHelper2.currentAccount).getPathToAttach(photoSize6, true);
                                                            }
                                                            file4.renameTo(file);
                                                            ImageLoader.getInstance().replaceImageInCache(str12, str13, ImageLocation.getForPhoto(photoSize6, photo2), z);
                                                            photoSize5.location = photoSize6.location;
                                                            photoSize5.size = photoSize6.size;
                                                        }
                                                        i8++;
                                                        sendMessagesHelper2 = this;
                                                        str2 = str6;
                                                        str = str5;
                                                        messageMedia7 = messageMedia;
                                                    }
                                                }
                                            }
                                            i9++;
                                            sendMessagesHelper2 = this;
                                            str = str5;
                                            messageMedia7 = messageMedia;
                                        }
                                        str5 = str;
                                        messageMedia = messageMedia7;
                                        String str14 = photoSize5.location.volume_id + "_" + photoSize5.location.local_id;
                                        new File(FileLoader.getDirectory(4), str14 + ".jpg").delete();
                                        str6 = str2;
                                        if (str6.equals(photoSize5.type) && closestPhotoSizeWithSize8 != null) {
                                            photo.sizes.set(i8, closestPhotoSizeWithSize8);
                                            ImageLocation forPhoto2 = ImageLocation.getForPhoto(closestPhotoSizeWithSize8, photo2);
                                            ImageLoader.getInstance().replaceImageInCache(str14, forPhoto2.getKey(message, null, false), forPhoto2, z);
                                        }
                                        i8++;
                                        sendMessagesHelper2 = this;
                                        str2 = str6;
                                        str = str5;
                                        messageMedia7 = messageMedia;
                                    }
                                    str6 = str2;
                                    i8++;
                                    sendMessagesHelper2 = this;
                                    str2 = str6;
                                    str = str5;
                                    messageMedia7 = messageMedia;
                                }
                            }
                            str3 = str;
                            TLRPC.MessageMedia messageMedia12 = messageMedia7;
                            bArr = null;
                            photo.f1692id = photo2.f1692id;
                            photo.dc_id = photo2.dc_id;
                            photo.access_hash = photo2.access_hash;
                            messageMedia7 = messageMedia12;
                        } else {
                            str3 = str;
                            bArr = null;
                            closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageMedia7.document.thumbs, 320);
                            closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(messageMedia11.document.thumbs, 320);
                            if (closestPhotoSizeWithSize2 == null && (fileLocation2 = closestPhotoSizeWithSize2.location) != null && fileLocation2.volume_id == -2147483648L && closestPhotoSizeWithSize3 != null && closestPhotoSizeWithSize3.location != null && !(closestPhotoSizeWithSize3 instanceof TLRPC.TL_photoSizeEmpty) && !(closestPhotoSizeWithSize2 instanceof TLRPC.TL_photoSizeEmpty)) {
                                String str15 = closestPhotoSizeWithSize2.location.volume_id + "_" + closestPhotoSizeWithSize2.location.local_id;
                                String str16 = closestPhotoSizeWithSize3.location.volume_id + "_" + closestPhotoSizeWithSize3.location.local_id;
                                if (!str15.equals(str16)) {
                                    new File(FileLoader.getDirectory(4), str15 + ".jpg").renameTo(new File(FileLoader.getDirectory(4), str16 + ".jpg"));
                                    ImageLoader.getInstance().replaceImageInCache(str15, str16, ImageLocation.getForDocument(closestPhotoSizeWithSize3, messageMedia11.document), z);
                                    closestPhotoSizeWithSize2.location = closestPhotoSizeWithSize3.location;
                                    closestPhotoSizeWithSize2.size = closestPhotoSizeWithSize3.size;
                                }
                            } else if (closestPhotoSizeWithSize3 == null && closestPhotoSizeWithSize2 != null && MessageObject.isStickerMessage(message) && (fileLocation = closestPhotoSizeWithSize2.location) != null) {
                                closestPhotoSizeWithSize3.location = fileLocation;
                            } else if (closestPhotoSizeWithSize2 != null || (closestPhotoSizeWithSize2.location instanceof TLRPC.TL_fileLocationUnavailable) || (closestPhotoSizeWithSize2 instanceof TLRPC.TL_photoSizeEmpty)) {
                                messageMedia7.document.thumbs = messageMedia11.document.thumbs;
                            }
                        }
                        TLRPC.Document document9 = messageMedia7.document;
                        TLRPC.Document document10 = messageMedia11.document;
                        document9.dc_id = document10.dc_id;
                        document9.f1668id = document10.f1668id;
                        document9.access_hash = document10.access_hash;
                        i3 = 0;
                        while (true) {
                            if (i3 < messageMedia7.document.attributes.size()) {
                                bArr2 = bArr;
                                break;
                            }
                            TLRPC.DocumentAttribute documentAttribute = messageMedia7.document.attributes.get(i3);
                            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                                bArr2 = documentAttribute.waveform;
                                break;
                            }
                            i3++;
                        }
                        messageMedia7.document.attributes = messageMedia11.document.attributes;
                        if (bArr2 != null) {
                            for (int i10 = 0; i10 < messageMedia7.document.attributes.size(); i10++) {
                                TLRPC.DocumentAttribute documentAttribute2 = messageMedia7.document.attributes.get(i10);
                                if (documentAttribute2 instanceof TLRPC.TL_documentAttributeAudio) {
                                    documentAttribute2.waveform = bArr2;
                                    documentAttribute2.flags |= 4;
                                }
                            }
                        }
                        TLRPC.Document document11 = messageMedia7.document;
                        TLRPC.Document document12 = messageMedia11.document;
                        document11.size = document12.size;
                        document11.mime_type = document12.mime_type;
                        if ((message.flags & 4) == 0 || (!(MessageObject.isOut(message) || message.dialog_id == getUserConfig().getClientUserId()) || MessageObject.isQuickReply(message))) {
                            messageObject3 = messageObject;
                        } else {
                            if (MessageObject.isNewGifDocument(messageMedia11.document)) {
                                if (MessageObject.isDocumentHasAttachedStickers(messageMedia11.document) ? getMessagesController().saveGifsWithStickers : true) {
                                    getMediaDataController().addRecentGif(messageMedia11.document, message.date, true);
                                }
                            } else if (MessageObject.isStickerDocument(messageMedia11.document) || MessageObject.isAnimatedStickerDocument(messageMedia11.document, true)) {
                                messageObject3 = messageObject;
                                getMediaDataController().addRecentSticker(0, message, messageMedia11.document, message.date, false);
                            }
                            messageObject3 = messageObject;
                        }
                        if (tL_messageExtendedMedia3 == null) {
                            tL_messageExtendedMedia4 = tL_messageExtendedMedia3;
                            str4 = tL_messageExtendedMedia4.attachPath;
                            message4 = message3;
                        } else {
                            message4 = message3;
                            tL_messageExtendedMedia4 = tL_messageExtendedMedia3;
                            str4 = message4.attachPath;
                        }
                        if (str4 != null || !str4.startsWith(FileLoader.getDirectory(4).getAbsolutePath()) || MessageObject.isGifDocument(messageMedia11.document)) {
                            if (tL_messageExtendedMedia4 == null) {
                                tL_messageExtendedMedia4.attachPath = str4;
                                return;
                            } else {
                                message.attachPath = str4;
                                message.message = message4.message;
                                return;
                            }
                        }
                        File file5 = new File(str4);
                        File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(messageMedia11.document, messageMedia11.ttl_seconds != 0);
                        if (!file5.renameTo(pathToAttach)) {
                            if (file5.exists()) {
                                if (tL_messageExtendedMedia4 != null) {
                                    tL_messageExtendedMedia4.attachPath = str4;
                                } else {
                                    message.attachPath = str4;
                                }
                            } else if (tL_messageExtendedMedia4 == null) {
                                messageObject3.attachPathExists = false;
                            }
                            if (tL_messageExtendedMedia4 == null) {
                                messageObject3.mediaExists = pathToAttach.exists();
                            }
                            message.message = message4.message;
                            return;
                        }
                        if (MessageObject.isVideoMessage(message)) {
                            messageObject3.attachPathExists = true;
                            return;
                        }
                        messageObject3.mediaExists = messageObject3.attachPathExists;
                        messageObject3.attachPathExists = false;
                        if (tL_messageExtendedMedia4 != null) {
                            tL_messageExtendedMedia4.attachPath = _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            message4.attachPath = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        if (str3 != null) {
                            String str17 = str3;
                            if (str17.startsWith("http")) {
                                getMessagesStorage().addRecentLocalFile(str17, pathToAttach.toString(), messageMedia7.document);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                } else {
                    sendMessagesHelper2 = this;
                    str2 = "s";
                    tL_messageExtendedMedia3 = tL_messageExtendedMedia;
                }
                message3 = message2;
                photo = messageMedia7.video_cover;
                if (photo == null) {
                    str3 = str;
                    bArr = null;
                    closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageMedia7.document.thumbs, 320);
                    closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(messageMedia11.document.thumbs, 320);
                    if (closestPhotoSizeWithSize2 == null) {
                        if (closestPhotoSizeWithSize3 == null) {
                            if (closestPhotoSizeWithSize2 != null) {
                                messageMedia7.document.thumbs = messageMedia11.document.thumbs;
                            }
                        }
                    }
                }
                TLRPC.Document document92 = messageMedia7.document;
                TLRPC.Document document102 = messageMedia11.document;
                document92.dc_id = document102.dc_id;
                document92.f1668id = document102.f1668id;
                document92.access_hash = document102.access_hash;
                i3 = 0;
                while (true) {
                    if (i3 < messageMedia7.document.attributes.size()) {
                    }
                    i3++;
                }
                messageMedia7.document.attributes = messageMedia11.document.attributes;
                if (bArr2 != null) {
                }
                TLRPC.Document document112 = messageMedia7.document;
                TLRPC.Document document122 = messageMedia11.document;
                document112.size = document122.size;
                document112.mime_type = document122.mime_type;
                if ((message.flags & 4) == 0) {
                    messageObject3 = messageObject;
                }
                if (tL_messageExtendedMedia3 == null) {
                }
                if (str4 != null) {
                }
                if (tL_messageExtendedMedia4 == null) {
                }
            } else {
                TLRPC.MessageMedia messageMedia13 = message.media;
                if ((messageMedia13 instanceof TLRPC.TL_messageMediaContact) && (message2.media instanceof TLRPC.TL_messageMediaContact)) {
                    message2.media = messageMedia13;
                    return;
                }
                if (messageMedia13 instanceof TLRPC.TL_messageMediaWebPage) {
                    message2.media = messageMedia13;
                    return;
                }
                if (messageMedia13 instanceof TLRPC.TL_messageMediaGeo) {
                    TLRPC.GeoPoint geoPoint = messageMedia13.geo;
                    TLRPC.GeoPoint geoPoint2 = message2.media.geo;
                    geoPoint.lat = geoPoint2.lat;
                    geoPoint._long = geoPoint2._long;
                    return;
                }
                if ((messageMedia13 instanceof TLRPC.TL_messageMediaGame) || (messageMedia13 instanceof TLRPC.TL_messageMediaInvoice)) {
                    message2.media = messageMedia13;
                    if (!TextUtils.isEmpty(message.message)) {
                        message2.entities = message.entities;
                        message2.message = message.message;
                    }
                    TLRPC.ReplyMarkup replyMarkup = message.reply_markup;
                    if (replyMarkup != null) {
                        message2.reply_markup = replyMarkup;
                        message2.flags |= 64;
                        return;
                    }
                    return;
                }
                if (messageMedia13 instanceof TLRPC.TL_messageMediaPoll) {
                    message2.media = messageMedia13;
                }
            }
        }
    }

    private void putToDelayedMessages(String str, DelayedMessage delayedMessage) {
        ArrayList<DelayedMessage> arrayList = this.delayedMessages.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.delayedMessages.put(str, arrayList);
        }
        arrayList.add(delayedMessage);
    }

    protected ArrayList<DelayedMessage> getDelayedMessages(String str) {
        return this.delayedMessages.get(str);
    }

    public long getNextRandomId() {
        long jNextLong = 0;
        while (jNextLong == 0) {
            jNextLong = Utilities.random.nextLong();
        }
        return jNextLong;
    }

    public void checkUnsentMessages() {
        getMessagesStorage().getUnsentMessages(MediaDataController.MAX_STYLE_RUNS_COUNT);
    }

    protected void processUnsentMessages(final ArrayList<TLRPC.Message> arrayList, final ArrayList<TLRPC.Message> arrayList2, final ArrayList<TLRPC.User> arrayList3, final ArrayList<TLRPC.Chat> arrayList4, final ArrayList<TLRPC.EncryptedChat> arrayList5) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processUnsentMessages$84(arrayList3, arrayList4, arrayList5, arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUnsentMessages$84(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        HashMap map;
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        getMessagesController().putEncryptedChats(arrayList3, true);
        int size = arrayList4.size();
        for (int i = 0; i < size; i++) {
            MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) arrayList4.get(i), false, true);
            long groupId = messageObject.getGroupId();
            if (groupId != 0 && (map = messageObject.messageOwner.params) != null && !map.containsKey("final") && (i == size - 1 || ((TLRPC.Message) arrayList4.get(i + 1)).grouped_id != groupId)) {
                messageObject.messageOwner.params.put("final", "1");
            }
            retrySendMessage(messageObject, true, 0L);
        }
        if (arrayList5 != null) {
            for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                MessageObject messageObject2 = new MessageObject(this.currentAccount, (TLRPC.Message) arrayList5.get(i2), false, true);
                messageObject2.scheduled = true;
                retrySendMessage(messageObject2, true, 0L);
            }
        }
    }

    public ImportingStickers getImportingStickers(String str) {
        return this.importingStickersMap.get(str);
    }

    public ImportingHistory getImportingHistory(long j) {
        return (ImportingHistory) this.importingHistoryMap.get(j);
    }

    public boolean isImportingStickers() {
        return this.importingStickersMap.size() != 0;
    }

    public boolean isImportingHistory() {
        return this.importingHistoryMap.size() != 0;
    }

    public void prepareImportHistory(final long j, final Uri uri, final ArrayList<Uri> arrayList, final MessagesStorage.LongCallback longCallback) {
        if (this.importingHistoryMap.get(j) != null) {
            longCallback.run(0L);
            return;
        }
        if (DialogObject.isChatDialog(j)) {
            long j2 = -j;
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(j2));
            if (chat != null && !chat.megagroup) {
                getMessagesController().convertToMegaGroup(null, j2, null, new MessagesStorage.LongCallback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda29
                    @Override // org.telegram.messenger.MessagesStorage.LongCallback
                    public final void run(long j3) {
                        this.f$0.lambda$prepareImportHistory$85(uri, arrayList, longCallback, j3);
                    }
                });
                return;
            }
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareImportHistory$90(arrayList, j, uri, longCallback);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$85(Uri uri, ArrayList arrayList, MessagesStorage.LongCallback longCallback, long j) {
        if (j != 0) {
            prepareImportHistory(-j, uri, arrayList, longCallback);
        } else {
            longCallback.run(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$prepareImportHistory$90(ArrayList arrayList, final long j, Uri uri, final MessagesStorage.LongCallback longCallback) {
        ZipInputStream zipInputStream;
        ArrayList arrayList2 = arrayList != null ? arrayList : new ArrayList();
        final ImportingHistory importingHistory = new ImportingHistory();
        importingHistory.mediaPaths = arrayList2;
        importingHistory.dialogId = j;
        importingHistory.peer = getMessagesController().getInputPeer(j);
        final HashMap map = new HashMap();
        int size = arrayList2.size();
        int i = 0;
        while (i < size + 1) {
            Uri uri2 = i == 0 ? uri : (Uri) arrayList2.get(i - 1);
            if (uri2 != null && !AndroidUtilities.isInternalUri(uri2)) {
                String strFixFileName = FileLoader.fixFileName(MediaController.getFileName(uri));
                String str = (strFixFileName == null || !strFixFileName.endsWith(".zip")) ? "txt" : "zip";
                String strCopyFileToCache = MediaController.copyFileToCache(uri2, str);
                if ("zip".equals(str)) {
                    File file = new File(strCopyFileToCache);
                    try {
                        try {
                            zipInputStream = new ZipInputStream(new FileInputStream(file));
                        } catch (IOException e) {
                            FileLog.m1136e(e);
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        while (true) {
                            if (nextEntry == null) {
                                break;
                            }
                            String name = nextEntry.getName();
                            if (name == null) {
                                nextEntry = zipInputStream.getNextEntry();
                            } else {
                                int iLastIndexOf = name.lastIndexOf("/");
                                if (iLastIndexOf >= 0) {
                                    name = name.substring(iLastIndexOf + 1);
                                }
                                if (name.endsWith(".txt")) {
                                    File fileCreateFileInCache = MediaController.createFileInCache(name, "txt");
                                    strCopyFileToCache = fileCreateFileInCache.getAbsolutePath();
                                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateFileInCache);
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i2 = zipInputStream.read(bArr);
                                        if (i2 <= 0) {
                                            break;
                                        } else {
                                            fileOutputStream.write(bArr, 0, i2);
                                        }
                                    }
                                    fileOutputStream.close();
                                } else {
                                    nextEntry = zipInputStream.getNextEntry();
                                }
                            }
                        }
                        zipInputStream.closeEntry();
                        zipInputStream.close();
                        try {
                            file.delete();
                        } catch (Exception e3) {
                            FileLog.m1136e(e3);
                        }
                    } catch (Throwable th) {
                        try {
                            zipInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (strCopyFileToCache == null) {
                    continue;
                } else {
                    File file2 = new File(strCopyFileToCache);
                    if (file2.exists()) {
                        long length = file2.length();
                        if (length != 0) {
                            importingHistory.totalSize += length;
                            if (i != 0) {
                                importingHistory.uploadMedia.add(strCopyFileToCache);
                            } else {
                                if (length > 33554432) {
                                    file2.delete();
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda57
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            SendMessagesHelper.m4850$r8$lambda$ARakRwMAMJqRMSOcTfrXq7Aco(longCallback);
                                        }
                                    });
                                    return;
                                }
                                importingHistory.historyPath = strCopyFileToCache;
                            }
                            importingHistory.uploadSet.add(strCopyFileToCache);
                            map.put(strCopyFileToCache, importingHistory);
                        } else if (i == 0) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda56
                                @Override // java.lang.Runnable
                                public final void run() {
                                    longCallback.run(0L);
                                }
                            });
                            return;
                        }
                    }
                }
            } else if (i == 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda55
                    @Override // java.lang.Runnable
                    public final void run() {
                        longCallback.run(0L);
                    }
                });
                return;
            }
            i++;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareImportHistory$89(map, j, importingHistory, longCallback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$ARakRw-MAMJqRMSO-cTfrXq7Aco, reason: not valid java name */
    public static /* synthetic */ void m4850$r8$lambda$ARakRwMAMJqRMSOcTfrXq7Aco(MessagesStorage.LongCallback longCallback) {
        Toast.makeText(ApplicationLoader.applicationContext, LocaleController.getString(C2888R.string.ImportFileTooLarge), 0).show();
        longCallback.run(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$89(HashMap map, long j, ImportingHistory importingHistory, MessagesStorage.LongCallback longCallback) {
        this.importingHistoryFiles.putAll(map);
        this.importingHistoryMap.put(j, importingHistory);
        getFileLoader().uploadFile(importingHistory.historyPath, false, true, 0L, 67108864, true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(j));
        longCallback.run(j);
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) ImportingService.class));
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
    }

    public void prepareImportStickers(final String str, final String str2, final String str3, final ArrayList<ImportingSticker> arrayList, final MessagesStorage.StringCallback stringCallback) {
        if (this.importingStickersMap.get(str2) != null) {
            stringCallback.run(null);
        } else {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareImportStickers$93(str, str2, str3, arrayList, stringCallback);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$prepareImportStickers$93(String str, final String str2, String str3, ArrayList arrayList, final MessagesStorage.StringCallback stringCallback) {
        final ImportingStickers importingStickers = new ImportingStickers();
        importingStickers.title = str;
        importingStickers.shortName = str2;
        importingStickers.software = str3;
        final HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ImportingSticker importingSticker = (ImportingSticker) arrayList.get(i);
            File file = new File(importingSticker.path);
            if (file.exists()) {
                long length = file.length();
                if (length != 0) {
                    importingStickers.totalSize += length;
                    importingStickers.uploadMedia.add(importingSticker);
                    importingStickers.uploadSet.put(importingSticker.path, importingSticker);
                    map.put(importingSticker.path, importingStickers);
                } else if (i == 0) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda86
                        @Override // java.lang.Runnable
                        public final void run() {
                            stringCallback.run(null);
                        }
                    });
                    return;
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda87
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareImportStickers$92(importingStickers, map, str2, stringCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportStickers$92(ImportingStickers importingStickers, HashMap map, String str, MessagesStorage.StringCallback stringCallback) {
        if (importingStickers.uploadMedia.get(0).item != null) {
            importingStickers.startImport();
        } else {
            this.importingStickersFiles.putAll(map);
            this.importingStickersMap.put(str, importingStickers);
            importingStickers.initImport();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, str);
            stringCallback.run(str);
        }
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) ImportingService.class));
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
    }

    public TLRPC.TL_photo generatePhotoSizes(String str, Uri uri) {
        return generatePhotoSizes(null, str, uri, false);
    }

    public TLRPC.TL_photo generatePhotoSizes(TLRPC.TL_photo tL_photo, String str, Uri uri, boolean z) {
        TLRPC.PhotoSize photoSizeScaleAndSaveImage;
        Bitmap bitmap;
        Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), true);
        if (bitmapLoadBitmap == null) {
            bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, 800.0f, 800.0f, true);
        }
        Bitmap bitmap2 = bitmapLoadBitmap;
        ArrayList arrayList = new ArrayList();
        TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmap2, 90.0f, 90.0f, 55, true);
        if (photoSizeScaleAndSaveImage2 != null) {
            arrayList.add(photoSizeScaleAndSaveImage2);
        }
        if (z) {
            bitmap = bitmap2;
            photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, true, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), 99, false, 101, 101, false);
        } else {
            photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmap2, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), true, 80, false, 101, 101);
            bitmap = bitmap2;
        }
        if (photoSizeScaleAndSaveImage != null) {
            arrayList.add(photoSizeScaleAndSaveImage);
        }
        if (bitmap != null) {
            bitmap.recycle();
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        getUserConfig().saveConfig(false);
        TLRPC.TL_photo tL_photo2 = tL_photo == null ? new TLRPC.TL_photo() : tL_photo;
        tL_photo2.date = getConnectionsManager().getCurrentTime();
        tL_photo2.sizes = arrayList;
        tL_photo2.file_reference = new byte[0];
        return tL_photo2;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0270 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02ab A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0527 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x05a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x01b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:385:0x019d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:397:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int prepareSendingDocumentInternal(AccountInstance accountInstance, String str, String str2, Uri uri, String str3, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final ArrayList<TLRPC.MessageEntity> arrayList, final MessageObject messageObject3, long[] jArr, boolean z, CharSequence charSequence, final boolean z2, int i, final int i2, Integer[] numArr, boolean z3, final String str4, final int i3, final long j2, final boolean z4, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) throws Throwable {
        String strCopyFileToCache;
        String strSubstring;
        File file;
        String str5;
        Object obj;
        int i4;
        Bitmap cover;
        String title;
        String str6;
        Bitmap bitmap;
        boolean z5;
        int i5;
        AudioInfo audioInfo;
        String str7;
        Object obj2;
        Bitmap bitmap2;
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio;
        String str8;
        String str9;
        boolean z6;
        String mimeTypeFromExtension;
        String str10;
        String str11;
        String str12;
        String str13;
        File file2;
        Object obj3;
        int i6;
        String str14;
        String str15;
        boolean z7;
        final String str16;
        final TLRPC.TL_document tL_document;
        String str17;
        boolean z8;
        String str18;
        String str19;
        final HashMap map;
        String str20;
        int i7;
        Integer num;
        AccountInstance accountInstance2;
        final int i8;
        boolean z9;
        BitmapFactory.Options options;
        int i9;
        int i10;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage;
        int i11;
        TLRPC.TL_document tL_document2;
        String str21;
        TLRPC.TL_document tL_document3;
        String str22;
        String str23;
        TLRPC.TL_document tL_document4;
        String absolutePath;
        Throwable th;
        MediaMetadataRetriever mediaMetadataRetriever;
        Bitmap bitmapDecodeByteArray;
        MediaMetadataRetriever mediaMetadataRetriever2;
        String strExtractMetadata;
        int i12;
        String strExtractMetadata2;
        boolean z10;
        if ((str == null || str.length() == 0) && uri == null) {
            return 1;
        }
        if (uri != null && AndroidUtilities.isInternalUri(uri)) {
            return 1;
        }
        if (str != null && AndroidUtilities.isInternalUri(Uri.fromFile(new File(str)))) {
            return 1;
        }
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        if (uri != null && str == null) {
            if (checkFileSize(accountInstance, uri)) {
                return 2;
            }
            strSubstring = str3 != null ? singleton.getExtensionFromMimeType(str3) : null;
            if (strSubstring == null) {
                strSubstring = "txt";
                z10 = false;
            } else {
                z10 = true;
            }
            strCopyFileToCache = MediaController.copyFileToCache(uri, strSubstring);
            if (strCopyFileToCache == null) {
                return 1;
            }
            if (!z10) {
            }
            file = new File(strCopyFileToCache);
            if (file.exists() || file.length() == 0) {
                return 1;
            }
            if (!FileLoader.checkUploadFileSize(accountInstance.getCurrentAccount(), file.length())) {
                return 2;
            }
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
            String name = file.getName();
            if (strSubstring == null) {
                int iLastIndexOf = strCopyFileToCache.lastIndexOf(46);
                if (iLastIndexOf == -1) {
                    str5 = _UrlKt.FRAGMENT_ENCODE_SET;
                } else {
                    strSubstring = strCopyFileToCache.substring(iLastIndexOf + 1);
                    str5 = strSubstring;
                }
            } else {
                str5 = strSubstring;
            }
            String lowerCase = str5.toLowerCase();
            if (lowerCase.equals("mp3") || lowerCase.equals("m4a")) {
                obj = "opus";
                AudioInfo audioInfo2 = AudioInfo.getAudioInfo(file);
                if (audioInfo2 != null) {
                    long duration = audioInfo2.getDuration();
                    if (duration != 0) {
                        String artist = audioInfo2.getArtist();
                        title = audioInfo2.getTitle();
                        audioInfo = audioInfo2;
                        str6 = artist;
                        i4 = (int) (duration / 1000);
                    } else {
                        audioInfo = audioInfo2;
                        i4 = 0;
                        title = null;
                        str6 = null;
                    }
                    cover = audioInfo.getCover();
                } else {
                    i4 = 0;
                    cover = null;
                    title = null;
                    str6 = null;
                }
                bitmap = cover;
                z5 = false;
                i5 = i4;
            } else {
                if (lowerCase.equals("opus") || lowerCase.equals("ogg") || lowerCase.equals("flac")) {
                    try {
                        mediaMetadataRetriever2 = new MediaMetadataRetriever();
                        try {
                            try {
                                mediaMetadataRetriever2.setDataSource(file.getAbsolutePath());
                                if (mediaMetadataRetriever2.extractMetadata(9) != null) {
                                    int iCeil = (int) Math.ceil(Long.parseLong(r0) / 1000.0f);
                                    try {
                                        strExtractMetadata = mediaMetadataRetriever2.extractMetadata(7);
                                        i12 = iCeil;
                                    } catch (Exception e) {
                                        e = e;
                                        i12 = iCeil;
                                        obj = "opus";
                                        bitmapDecodeByteArray = null;
                                        strExtractMetadata = null;
                                    }
                                    try {
                                        strExtractMetadata2 = mediaMetadataRetriever2.extractMetadata(2);
                                    } catch (Exception e2) {
                                        e = e2;
                                        obj = "opus";
                                        bitmapDecodeByteArray = null;
                                        str6 = null;
                                        FileLog.m1136e(e);
                                        if (mediaMetadataRetriever2 != null) {
                                        }
                                        bitmap = bitmapDecodeByteArray;
                                        title = strExtractMetadata;
                                        i5 = i12;
                                        str7 = str6;
                                        z5 = false;
                                        if (i5 != 0) {
                                        }
                                        if (str2 == null) {
                                        }
                                        z6 = false;
                                        mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                                        if (z3) {
                                        }
                                        if (!z6) {
                                        }
                                        if (tL_document != null) {
                                        }
                                        str19 = str11;
                                        if (charSequence != null) {
                                        }
                                        map = new HashMap();
                                        if (str12 != null) {
                                        }
                                        if (z3) {
                                        }
                                        if (str18 != null) {
                                        }
                                        int i13 = 0;
                                        if (numArr == null) {
                                        }
                                        if (z8) {
                                        }
                                        final String str24 = str20;
                                        final AccountInstance accountInstance3 = accountInstance2;
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance3, tL_document, str16, map, str24, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                                            }
                                        });
                                        return i13;
                                    }
                                } else {
                                    strExtractMetadata2 = null;
                                    strExtractMetadata = null;
                                    i12 = 0;
                                }
                                try {
                                    byte[] embeddedPicture = mediaMetadataRetriever2.getEmbeddedPicture();
                                    if (embeddedPicture != null) {
                                        str6 = strExtractMetadata2;
                                        try {
                                            obj = "opus";
                                        } catch (Exception e3) {
                                            e = e3;
                                            obj = "opus";
                                            bitmapDecodeByteArray = null;
                                            FileLog.m1136e(e);
                                            if (mediaMetadataRetriever2 != null) {
                                                try {
                                                    mediaMetadataRetriever2.release();
                                                } catch (Exception e4) {
                                                    FileLog.m1136e(e4);
                                                }
                                            }
                                            bitmap = bitmapDecodeByteArray;
                                            title = strExtractMetadata;
                                            i5 = i12;
                                            str7 = str6;
                                            z5 = false;
                                            if (i5 != 0) {
                                            }
                                            if (str2 == null) {
                                            }
                                            z6 = false;
                                            mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                                            if (z3) {
                                            }
                                            if (!z6) {
                                            }
                                            if (tL_document != null) {
                                            }
                                            str19 = str11;
                                            if (charSequence != null) {
                                            }
                                            map = new HashMap();
                                            if (str12 != null) {
                                            }
                                            if (z3) {
                                            }
                                            if (str18 != null) {
                                            }
                                            int i132 = 0;
                                            if (numArr == null) {
                                            }
                                            if (z8) {
                                            }
                                            final String str242 = str20;
                                            final AccountInstance accountInstance32 = accountInstance2;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance32, tL_document, str16, map, str242, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                                                }
                                            });
                                            return i132;
                                        }
                                        try {
                                            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(embeddedPicture, 0, embeddedPicture.length);
                                        } catch (Exception e5) {
                                            e = e5;
                                            bitmapDecodeByteArray = null;
                                            FileLog.m1136e(e);
                                            if (mediaMetadataRetriever2 != null) {
                                            }
                                            bitmap = bitmapDecodeByteArray;
                                            title = strExtractMetadata;
                                            i5 = i12;
                                            str7 = str6;
                                            z5 = false;
                                            if (i5 != 0) {
                                            }
                                            if (str2 == null) {
                                            }
                                            z6 = false;
                                            mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                                            if (z3) {
                                            }
                                            if (!z6) {
                                            }
                                            if (tL_document != null) {
                                            }
                                            str19 = str11;
                                            if (charSequence != null) {
                                            }
                                            map = new HashMap();
                                            if (str12 != null) {
                                            }
                                            if (z3) {
                                            }
                                            if (str18 != null) {
                                            }
                                            int i1322 = 0;
                                            if (numArr == null) {
                                            }
                                            if (z8) {
                                            }
                                            final String str2422 = str20;
                                            final AccountInstance accountInstance322 = accountInstance2;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance322, tL_document, str16, map, str2422, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                                                }
                                            });
                                            return i1322;
                                        }
                                    } else {
                                        str6 = strExtractMetadata2;
                                        obj = "opus";
                                        bitmapDecodeByteArray = null;
                                    }
                                    if (messageObject3 == null) {
                                        try {
                                            if (lowerCase.equals("ogg")) {
                                                boolean z11 = MediaController.isOpusFile(file.getAbsolutePath()) == 1;
                                                try {
                                                    mediaMetadataRetriever2.release();
                                                } catch (Exception e6) {
                                                    FileLog.m1136e(e6);
                                                }
                                                String str25 = strExtractMetadata;
                                                z5 = z11;
                                                title = str25;
                                                bitmap = bitmapDecodeByteArray;
                                                i5 = i12;
                                            }
                                        } catch (Exception e7) {
                                            e = e7;
                                            FileLog.m1136e(e);
                                            if (mediaMetadataRetriever2 != null) {
                                            }
                                            bitmap = bitmapDecodeByteArray;
                                            title = strExtractMetadata;
                                            i5 = i12;
                                            str7 = str6;
                                            z5 = false;
                                        }
                                    }
                                } catch (Exception e8) {
                                    e = e8;
                                    str6 = strExtractMetadata2;
                                }
                            } catch (Exception e9) {
                                e = e9;
                                obj = "opus";
                                bitmapDecodeByteArray = null;
                                strExtractMetadata = null;
                                i12 = 0;
                                str6 = null;
                                FileLog.m1136e(e);
                                if (mediaMetadataRetriever2 != null) {
                                }
                                bitmap = bitmapDecodeByteArray;
                                title = strExtractMetadata;
                                i5 = i12;
                                str7 = str6;
                                z5 = false;
                                if (i5 != 0) {
                                }
                                if (str2 == null) {
                                }
                                z6 = false;
                                mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                                if (z3) {
                                }
                                if (!z6) {
                                }
                                if (tL_document != null) {
                                }
                                str19 = str11;
                                if (charSequence != null) {
                                }
                                map = new HashMap();
                                if (str12 != null) {
                                }
                                if (z3) {
                                }
                                if (str18 != null) {
                                }
                                int i13222 = 0;
                                if (numArr == null) {
                                }
                                if (z8) {
                                }
                                final String str24222 = str20;
                                final AccountInstance accountInstance3222 = accountInstance2;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance3222, tL_document, str16, map, str24222, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                                    }
                                });
                                return i13222;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            mediaMetadataRetriever = mediaMetadataRetriever2;
                            if (mediaMetadataRetriever == null) {
                                try {
                                    mediaMetadataRetriever.release();
                                    throw th;
                                } catch (Exception e10) {
                                    FileLog.m1136e(e10);
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        obj = "opus";
                        bitmapDecodeByteArray = null;
                        mediaMetadataRetriever2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        mediaMetadataRetriever = null;
                        if (mediaMetadataRetriever == null) {
                        }
                    }
                    if (i5 != 0) {
                        tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                        obj2 = "m4a";
                        bitmap2 = bitmap;
                        tL_documentAttributeAudio.duration = i5;
                        tL_documentAttributeAudio.title = title;
                        tL_documentAttributeAudio.performer = str7;
                        if (title == null) {
                            tL_documentAttributeAudio.title = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        int i14 = tL_documentAttributeAudio.flags;
                        tL_documentAttributeAudio.flags = i14 | 1;
                        if (str7 == null) {
                            tL_documentAttributeAudio.performer = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        tL_documentAttributeAudio.flags = i14 | 3;
                        if (z5) {
                            tL_documentAttributeAudio.voice = true;
                        }
                    } else {
                        obj2 = "m4a";
                        bitmap2 = bitmap;
                        tL_documentAttributeAudio = null;
                    }
                    if (str2 == null) {
                        str8 = str5;
                        str9 = str2;
                    } else {
                        if (str2.endsWith("attheme")) {
                            str8 = str5;
                            str9 = str2;
                            z6 = true;
                            mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                            if (z3 && mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith("image/")) {
                                try {
                                    absolutePath = MediaController.createFileInCache("cleaned_" + name, str8).getAbsolutePath();
                                    try {
                                        if (MediaUtils.removeGeolocation(strCopyFileToCache, absolutePath)) {
                                            strCopyFileToCache = absolutePath;
                                        }
                                    } catch (Exception unused) {
                                        if (absolutePath != null) {
                                            try {
                                                new File(absolutePath).delete();
                                            } catch (Exception e12) {
                                                FileLog.m1136e(e12);
                                            }
                                        }
                                    }
                                } catch (Exception unused2) {
                                    absolutePath = null;
                                }
                            }
                            if (!z6 || zIsEncryptedDialog) {
                                str10 = "image/";
                                str11 = _UrlKt.FRAGMENT_ENCODE_SET;
                                str12 = str9;
                                str13 = str8;
                                file2 = file;
                                obj3 = obj;
                                i6 = -1;
                                str14 = mimeTypeFromExtension;
                                str15 = name;
                                z7 = zIsEncryptedDialog;
                                str16 = strCopyFileToCache;
                                tL_document = null;
                                str17 = null;
                            } else {
                                Object[] sentFile = accountInstance.getMessagesStorage().getSentFile(str9, !zIsEncryptedDialog ? 1 : 4);
                                if (sentFile != null) {
                                    Object obj4 = sentFile[0];
                                    if (obj4 instanceof TLRPC.TL_document) {
                                        tL_document2 = (TLRPC.TL_document) obj4;
                                        str21 = (String) sentFile[1];
                                    } else {
                                        tL_document2 = null;
                                        str21 = null;
                                    }
                                    if (tL_document2 != null || strCopyFileToCache.equals(str9) || zIsEncryptedDialog) {
                                        tL_document3 = tL_document2;
                                        str22 = str21;
                                        str23 = mimeTypeFromExtension;
                                    } else {
                                        MessagesStorage messagesStorage = accountInstance.getMessagesStorage();
                                        tL_document3 = tL_document2;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(strCopyFileToCache);
                                        str22 = str21;
                                        str23 = mimeTypeFromExtension;
                                        sb.append(file.length());
                                        Object[] sentFile2 = messagesStorage.getSentFile(sb.toString(), !zIsEncryptedDialog ? 1 : 4);
                                        if (sentFile2 != null) {
                                            Object obj5 = sentFile2[0];
                                            if (obj5 instanceof TLRPC.TL_document) {
                                                str22 = (String) sentFile2[1];
                                                tL_document4 = (TLRPC.TL_document) obj5;
                                            }
                                            str10 = "image/";
                                            str11 = _UrlKt.FRAGMENT_ENCODE_SET;
                                            str12 = str9;
                                            str13 = str8;
                                            str14 = str23;
                                            obj3 = obj;
                                            z7 = zIsEncryptedDialog;
                                            i6 = -1;
                                            file2 = file;
                                            str15 = name;
                                            str16 = strCopyFileToCache;
                                            tL_document = tL_document4;
                                            ensureMediaThumbExists(accountInstance, z7, tL_document, str16, null, 0L);
                                            str17 = str22;
                                        }
                                    }
                                    tL_document4 = tL_document3;
                                    str10 = "image/";
                                    str11 = _UrlKt.FRAGMENT_ENCODE_SET;
                                    str12 = str9;
                                    str13 = str8;
                                    str14 = str23;
                                    obj3 = obj;
                                    z7 = zIsEncryptedDialog;
                                    i6 = -1;
                                    file2 = file;
                                    str15 = name;
                                    str16 = strCopyFileToCache;
                                    tL_document = tL_document4;
                                    ensureMediaThumbExists(accountInstance, z7, tL_document, str16, null, 0L);
                                    str17 = str22;
                                }
                            }
                            if (tL_document != null) {
                                tL_document = new TLRPC.TL_document();
                                str18 = str17;
                                tL_document.f1668id = 0L;
                                tL_document.date = accountInstance.getConnectionsManager().getCurrentTime();
                                TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                                tL_documentAttributeFilename.file_name = str15;
                                tL_document.file_reference = new byte[0];
                                tL_document.attributes.add(tL_documentAttributeFilename);
                                boolean z12 = z7;
                                tL_document.size = file2.length();
                                tL_document.dc_id = 0;
                                if (tL_documentAttributeAudio != null) {
                                    tL_document.attributes.add(tL_documentAttributeAudio);
                                }
                                if (str13.length() != 0) {
                                    switch (lowerCase.hashCode()) {
                                        case 106458:
                                            i11 = !lowerCase.equals(obj2) ? i6 : 0;
                                            break;
                                        case 108272:
                                            i11 = !lowerCase.equals("mp3") ? i6 : 1;
                                            break;
                                        case 109967:
                                            i11 = !lowerCase.equals("ogg") ? i6 : 2;
                                            break;
                                        case 3145576:
                                            i11 = !lowerCase.equals("flac") ? i6 : 3;
                                            break;
                                        case 3418175:
                                            i11 = !lowerCase.equals(obj3) ? i6 : 4;
                                            break;
                                        case 3645340:
                                            i11 = !lowerCase.equals("webp") ? i6 : 5;
                                            break;
                                        default:
                                            i11 = i6;
                                            break;
                                    }
                                    switch (i11) {
                                        case 0:
                                            tL_document.mime_type = "audio/m4a";
                                            break;
                                        case 1:
                                            tL_document.mime_type = "audio/mpeg";
                                            break;
                                        case 2:
                                            tL_document.mime_type = "audio/ogg";
                                            break;
                                        case 3:
                                            tL_document.mime_type = "audio/flac";
                                            break;
                                        case 4:
                                            tL_document.mime_type = "audio/opus";
                                            break;
                                        case 5:
                                            tL_document.mime_type = "image/webp";
                                            break;
                                        default:
                                            if (str14 != null) {
                                                tL_document.mime_type = str14;
                                            } else {
                                                tL_document.mime_type = "application/octet-stream";
                                            }
                                            break;
                                    }
                                } else {
                                    tL_document.mime_type = "application/octet-stream";
                                }
                                if (z3 || !tL_document.mime_type.equals("image/gif") || (messageObject3 != null && messageObject3.getGroupIdForUse() != 0)) {
                                    z9 = z12;
                                    if (bitmap2 != null) {
                                        Bitmap bitmap3 = bitmap2;
                                        TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmap3, 132.0f, 132.0f, 55, z9);
                                        if (photoSizeScaleAndSaveImage2 != null) {
                                            tL_document.thumbs.add(photoSizeScaleAndSaveImage2);
                                            tL_document.flags |= 1;
                                        }
                                        bitmap3.recycle();
                                    }
                                    if (tL_document.mime_type.equals("image/webp") && messageObject3 == null) {
                                        options = new BitmapFactory.Options();
                                        try {
                                            options.inJustDecodeBounds = true;
                                            BitmapFactory.decodeFile(str16, options);
                                        } catch (Exception e13) {
                                            FileLog.m1136e(e13);
                                        }
                                        i9 = options.outWidth;
                                        if (i9 != 0 && (i10 = options.outHeight) != 0 && i9 <= 800 && i10 <= 800) {
                                            TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                                            str19 = str11;
                                            tL_documentAttributeSticker.alt = str19;
                                            tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                            tL_document.attributes.add(tL_documentAttributeSticker);
                                            TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                                            tL_documentAttributeImageSize.f1671w = options.outWidth;
                                            tL_documentAttributeImageSize.f1670h = options.outHeight;
                                            tL_document.attributes.add(tL_documentAttributeImageSize);
                                            z8 = z9;
                                            photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(null, ImageLoader.loadBitmap(file2.getAbsolutePath(), null, 400.0f, 400.0f, true), Bitmap.CompressFormat.PNG, false, 400.0f, 400.0f, 100, z8, 0, 0, false);
                                            if (photoSizeScaleAndSaveImage != null) {
                                                tL_document.thumbs.add(photoSizeScaleAndSaveImage);
                                                tL_document.flags |= 1;
                                            }
                                        }
                                    }
                                    z8 = z9;
                                } else {
                                    try {
                                        Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(file2.getAbsolutePath(), null, 90.0f, 90.0f, true);
                                        if (bitmapLoadBitmap != null) {
                                            tL_documentAttributeFilename.file_name = "animation.gif";
                                            tL_document.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                            z9 = z12;
                                            try {
                                                TLRPC.PhotoSize photoSizeScaleAndSaveImage3 = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, 90.0f, 90.0f, 55, z9);
                                                if (photoSizeScaleAndSaveImage3 != null) {
                                                    tL_document.thumbs.add(photoSizeScaleAndSaveImage3);
                                                    tL_document.flags |= 1;
                                                }
                                                bitmapLoadBitmap.recycle();
                                            } catch (Exception e14) {
                                                e = e14;
                                                FileLog.m1136e(e);
                                            }
                                        }
                                    } catch (Exception e15) {
                                        e = e15;
                                        z9 = z12;
                                    }
                                    if (bitmap2 != null) {
                                    }
                                    if (tL_document.mime_type.equals("image/webp")) {
                                        options = new BitmapFactory.Options();
                                        options.inJustDecodeBounds = true;
                                        BitmapFactory.decodeFile(str16, options);
                                        i9 = options.outWidth;
                                        if (i9 != 0) {
                                            TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker2 = new TLRPC.TL_documentAttributeSticker();
                                            str19 = str11;
                                            tL_documentAttributeSticker2.alt = str19;
                                            tL_documentAttributeSticker2.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                            tL_document.attributes.add(tL_documentAttributeSticker2);
                                            TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize2 = new TLRPC.TL_documentAttributeImageSize();
                                            tL_documentAttributeImageSize2.f1671w = options.outWidth;
                                            tL_documentAttributeImageSize2.f1670h = options.outHeight;
                                            tL_document.attributes.add(tL_documentAttributeImageSize2);
                                            z8 = z9;
                                            photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(null, ImageLoader.loadBitmap(file2.getAbsolutePath(), null, 400.0f, 400.0f, true), Bitmap.CompressFormat.PNG, false, 400.0f, 400.0f, 100, z8, 0, 0, false);
                                            if (photoSizeScaleAndSaveImage != null) {
                                            }
                                        }
                                    }
                                    z8 = z9;
                                }
                                final String string = charSequence != null ? charSequence.toString() : str19;
                                map = new HashMap();
                                if (str12 != null) {
                                    map.put("originalPath", str12);
                                }
                                if (z3 && tL_documentAttributeAudio == null) {
                                    map.put("forceDocument", "1");
                                }
                                if (str18 != null) {
                                    str20 = str18;
                                    map.put("parentObject", str20);
                                } else {
                                    str20 = str18;
                                }
                                int i132222 = 0;
                                if (numArr == null) {
                                    i7 = 0;
                                    num = 0;
                                } else {
                                    Integer num2 = numArr[0];
                                    String str26 = tL_document.mime_type;
                                    if (str26 != null && str26.toLowerCase().startsWith("image/webp")) {
                                        numArr[0] = Integer.valueOf(i6);
                                        num = num2;
                                        i7 = 1;
                                        i132222 = 0;
                                    } else {
                                        String str27 = tL_document.mime_type;
                                        if ((str27 == null || !(str27.toLowerCase().startsWith(str10) || tL_document.mime_type.toLowerCase().startsWith("video/mp4"))) && !MessageObject.canPreviewDocument(tL_document)) {
                                            i132222 = 0;
                                            if (tL_documentAttributeAudio != null) {
                                                numArr[0] = 2;
                                            } else {
                                                numArr[0] = 0;
                                            }
                                        } else {
                                            i132222 = 0;
                                            numArr[0] = 1;
                                        }
                                        num = num2;
                                        i7 = i132222;
                                    }
                                }
                                if (z8 || jArr == null) {
                                    accountInstance2 = accountInstance;
                                    i8 = i;
                                } else {
                                    if (numArr == null || num == null || num == numArr[i132222]) {
                                        accountInstance2 = accountInstance;
                                        i8 = i;
                                    } else {
                                        accountInstance2 = accountInstance;
                                        i8 = i;
                                        finishGroup(accountInstance2, jArr[i132222], i8);
                                        jArr[i132222] = Utilities.random.nextLong();
                                    }
                                    if (i7 == 0) {
                                        map.put("groupId", str19 + jArr[i132222]);
                                        if (z) {
                                            map.put("final", "1");
                                        }
                                    }
                                }
                                final String str242222 = str20;
                                final AccountInstance accountInstance32222 = accountInstance2;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance32222, tL_document, str16, map, str242222, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                                    }
                                });
                                return i132222;
                            }
                            z8 = z7;
                            str18 = str17;
                            str19 = str11;
                            if (charSequence != null) {
                            }
                            map = new HashMap();
                            if (str12 != null) {
                            }
                            if (z3) {
                                map.put("forceDocument", "1");
                            }
                            if (str18 != null) {
                            }
                            int i1322222 = 0;
                            if (numArr == null) {
                            }
                            if (z8) {
                                accountInstance2 = accountInstance;
                                i8 = i;
                            }
                            final String str2422222 = str20;
                            final AccountInstance accountInstance322222 = accountInstance2;
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance322222, tL_document, str16, map, str2422222, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                                }
                            });
                            return i1322222;
                        }
                        str8 = str5;
                        str9 = tL_documentAttributeAudio != null ? str2 + MediaStreamTrack.AUDIO_TRACK_KIND + file.length() : str2 + _UrlKt.FRAGMENT_ENCODE_SET + file.length();
                    }
                    z6 = false;
                    mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                    if (z3) {
                        absolutePath = MediaController.createFileInCache("cleaned_" + name, str8).getAbsolutePath();
                        if (MediaUtils.removeGeolocation(strCopyFileToCache, absolutePath)) {
                        }
                    }
                    if (!z6) {
                        str10 = "image/";
                        str11 = _UrlKt.FRAGMENT_ENCODE_SET;
                        str12 = str9;
                        str13 = str8;
                        file2 = file;
                        obj3 = obj;
                        i6 = -1;
                        str14 = mimeTypeFromExtension;
                        str15 = name;
                        z7 = zIsEncryptedDialog;
                        str16 = strCopyFileToCache;
                        tL_document = null;
                        str17 = null;
                    }
                    if (tL_document != null) {
                    }
                    str19 = str11;
                    if (charSequence != null) {
                    }
                    map = new HashMap();
                    if (str12 != null) {
                    }
                    if (z3) {
                    }
                    if (str18 != null) {
                    }
                    int i13222222 = 0;
                    if (numArr == null) {
                    }
                    if (z8) {
                    }
                    final String str24222222 = str20;
                    final AccountInstance accountInstance3222222 = accountInstance2;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance3222222, tL_document, str16, map, str24222222, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                        }
                    });
                    return i13222222;
                }
                obj = "opus";
                str7 = null;
                i5 = 0;
                title = null;
                bitmap = null;
                z5 = false;
                if (i5 != 0) {
                }
                if (str2 == null) {
                }
                z6 = false;
                mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
                if (z3) {
                }
                if (!z6) {
                }
                if (tL_document != null) {
                }
                str19 = str11;
                if (charSequence != null) {
                }
                map = new HashMap();
                if (str12 != null) {
                }
                if (z3) {
                }
                if (str18 != null) {
                }
                int i132222222 = 0;
                if (numArr == null) {
                }
                if (z8) {
                }
                final String str242222222 = str20;
                final AccountInstance accountInstance32222222 = accountInstance2;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance32222222, tL_document, str16, map, str242222222, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                    }
                });
                return i132222222;
            }
            str7 = str6;
            if (i5 != 0) {
            }
            if (str2 == null) {
            }
            z6 = false;
            mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str8);
            if (z3) {
            }
            if (!z6) {
            }
            if (tL_document != null) {
            }
            str19 = str11;
            if (charSequence != null) {
            }
            map = new HashMap();
            if (str12 != null) {
            }
            if (z3) {
            }
            if (str18 != null) {
            }
            int i1322222222 = 0;
            if (numArr == null) {
            }
            if (z8) {
            }
            final String str2422222222 = str20;
            final AccountInstance accountInstance322222222 = accountInstance2;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(messageObject3, accountInstance322222222, tL_document, str16, map, str2422222222, j, messageObject, messageObject2, string, arrayList, z2, i8, i2, storyItem, replyQuote, str4, i3, j2, z4, j3, j4, messageSuggestionParams);
                }
            });
            return i1322222222;
        }
        strCopyFileToCache = str;
        strSubstring = null;
        file = new File(strCopyFileToCache);
        if (file.exists()) {
        }
        return 1;
    }

    public static /* synthetic */ void $r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_document tL_document, String str, HashMap map, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, String str3, ArrayList arrayList, boolean z, int i, int i2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, String str4, int i3, long j2, boolean z2, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tL_document, str, null, map, false, false, str2);
            return;
        }
        SendMessageParams sendMessageParamsM1180of = SendMessageParams.m1180of(tL_document, null, str, j, messageObject2, messageObject3, str3, arrayList, null, map, z, i, i2, 0, str2, null, false);
        sendMessageParamsM1180of.replyToStoryItem = storyItem;
        sendMessageParamsM1180of.replyQuote = replyQuote;
        sendMessageParamsM1180of.quick_reply_shortcut = str4;
        sendMessageParamsM1180of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1180of.effect_id = j2;
        sendMessageParamsM1180of.invert_media = z2;
        sendMessageParamsM1180of.payStars = j3;
        sendMessageParamsM1180of.monoForumPeer = j4;
        sendMessageParamsM1180of.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1180of);
    }

    private static boolean checkFileSize(AccountInstance accountInstance, Uri uri) {
        long j = 0;
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = ApplicationLoader.applicationContext.getContentResolver().openAssetFileDescriptor(uri, "r", null);
            if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                assetFileDescriptorOpenAssetFileDescriptor.getLength();
            }
            Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(uri, new String[]{"_size"}, null, null, null);
            int columnIndex = cursorQuery.getColumnIndex("_size");
            cursorQuery.moveToFirst();
            j = cursorQuery.getLong(columnIndex);
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        return !FileLoader.checkUploadFileSize(accountInstance.getCurrentAccount(), j);
    }

    public static void prepareSendingDocument(AccountInstance accountInstance, String str, String str2, Uri uri, String str3, String str4, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, int i, InputContentInfoCompat inputContentInfoCompat, String str5, int i2, boolean z2) {
        ArrayList arrayList;
        if ((str == null || str2 == null) && uri == null) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (uri != null) {
            arrayList = new ArrayList();
            arrayList.add(uri);
        } else {
            arrayList = null;
        }
        if (str != null) {
            arrayList2.add(str);
            arrayList3.add(str2);
        }
        prepareSendingDocuments(accountInstance, arrayList2, arrayList3, arrayList, str3, str4, j, messageObject, messageObject2, storyItem, replyQuote, messageObject3, z, i, inputContentInfoCompat, str5, i2, 0L, z2, 0L);
    }

    public static void prepareSendingAudioDocuments(final AccountInstance accountInstance, final ArrayList<MessageObject> arrayList, final CharSequence charSequence, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final boolean z, final int i, final int i2, final MessageObject messageObject3, final String str, final int i3, final long j2, final boolean z2, final long j3) {
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.m4866$r8$lambda$fHqUHPclS63bzXF0laObB1JKps(arrayList, j, accountInstance, charSequence, messageObject3, messageObject, messageObject2, z, i, i2, storyItem, str, i3, j2, z2, j3);
            }
        }).start();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /* JADX INFO: renamed from: $r8$lambda$fHqUHPclS63bzXF0laObB1J-Kps, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void m4866$r8$lambda$fHqUHPclS63bzXF0laObB1JKps(ArrayList arrayList, final long j, final AccountInstance accountInstance, CharSequence charSequence, final MessageObject messageObject, final MessageObject messageObject2, final MessageObject messageObject3, final boolean z, final int i, final int i2, final TL_stories.StoryItem storyItem, final String str, final int i3, final long j2, final boolean z2, final long j3) {
        String str2;
        TLRPC.TL_document tL_document;
        int size = arrayList.size();
        long jNextLong = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < size) {
            final MessageObject messageObject4 = (MessageObject) arrayList.get(i4);
            String str3 = messageObject4.messageOwner.attachPath;
            File file = new File(str3);
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
            if (!zIsEncryptedDialog && size > 1 && i5 % 10 == 0) {
                jNextLong = Utilities.random.nextLong();
                i5 = 0;
            }
            if (str3 != null) {
                str3 = str3 + MediaStreamTrack.AUDIO_TRACK_KIND + file.length();
            }
            if (!zIsEncryptedDialog) {
                Object[] sentFile = accountInstance.getMessagesStorage().getSentFile(str3, !zIsEncryptedDialog ? 1 : 4);
                if (sentFile != null) {
                    Object obj = sentFile[0];
                    if (obj instanceof TLRPC.TL_document) {
                        tL_document = (TLRPC.TL_document) obj;
                        str2 = (String) sentFile[1];
                        ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document, str3, null, 0L);
                    } else {
                        str2 = null;
                        tL_document = null;
                    }
                }
            }
            if (tL_document == null) {
                tL_document = (TLRPC.TL_document) messageObject4.messageOwner.media.document;
            }
            final TLRPC.TL_document tL_document2 = tL_document;
            if (zIsEncryptedDialog && accountInstance.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                return;
            }
            CharSequence[] charSequenceArr = {charSequence};
            final ArrayList<TLRPC.MessageEntity> entities = i4 == 0 ? accountInstance.getMediaDataController().getEntities(charSequenceArr, true) : null;
            final String string = i4 == 0 ? charSequenceArr[0].toString() : null;
            final HashMap map = new HashMap();
            if (str3 != null) {
                map.put("originalPath", str3);
            }
            if (str2 != null) {
                map.put("parentObject", str2);
            }
            i5++;
            map.put("groupId", _UrlKt.FRAGMENT_ENCODE_SET + jNextLong);
            if (i5 == 10 || i4 == size - 1) {
                map.put("final", "1");
            }
            final String str4 = str2;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.$r8$lambda$mSCqOIlhzeAswc6rsIWBlwVV8Xs(messageObject, accountInstance, tL_document2, messageObject4, map, str4, j, messageObject2, messageObject3, string, entities, z, i, i2, storyItem, str, i3, j2, z2, j3);
                }
            });
            i4++;
        }
    }

    public static /* synthetic */ void $r8$lambda$mSCqOIlhzeAswc6rsIWBlwVV8Xs(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_document tL_document, MessageObject messageObject2, HashMap map, String str, long j, MessageObject messageObject3, MessageObject messageObject4, String str2, ArrayList arrayList, boolean z, int i, int i2, TL_stories.StoryItem storyItem, String str3, int i3, long j2, boolean z2, long j3) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tL_document, messageObject2.messageOwner.attachPath, null, map, false, false, str);
            return;
        }
        SendMessageParams sendMessageParamsM1181of = SendMessageParams.m1181of(tL_document, null, messageObject2.messageOwner.attachPath, j, messageObject3, messageObject4, str2, arrayList, null, map, z, i, i2, 0, str, null, false, false);
        sendMessageParamsM1181of.replyToStoryItem = storyItem;
        sendMessageParamsM1181of.quick_reply_shortcut = str3;
        sendMessageParamsM1181of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1181of.effect_id = j2;
        sendMessageParamsM1181of.invert_media = z2;
        sendMessageParamsM1181of.payStars = j3;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1181of);
    }

    private static void finishGroup(final AccountInstance accountInstance, final long j, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.$r8$lambda$kqEknKP2axYGFhgaPTRGKq4CkSg(accountInstance, j, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$kqEknKP2axYGFhgaPTRGKq4CkSg(AccountInstance accountInstance, long j, int i) {
        SendMessagesHelper sendMessagesHelper = accountInstance.getSendMessagesHelper();
        ArrayList<DelayedMessage> arrayList = sendMessagesHelper.delayedMessages.get("group_" + j);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        DelayedMessage delayedMessage = arrayList.get(0);
        ArrayList<MessageObject> arrayList2 = delayedMessage.messageObjects;
        MessageObject messageObject = arrayList2.get(arrayList2.size() - 1);
        delayedMessage.finalGroupMessage = messageObject.getId();
        messageObject.messageOwner.params.put("final", "1");
        TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
        tL_messages_messages.messages.add(messageObject.messageOwner);
        if (!delayedMessage.paidMedia) {
            accountInstance.getMessagesStorage().putMessages((TLRPC.messages_Messages) tL_messages_messages, delayedMessage.peer, -2, 0, false, i != 0 ? 1 : 0, 0L);
        }
        sendMessagesHelper.sendReadyToSendGroup(delayedMessage, true, true);
    }

    public static void prepareSendingDocuments(AccountInstance accountInstance, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<Uri> arrayList3, String str, String str2, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, int i, InputContentInfoCompat inputContentInfoCompat, String str3, int i2, long j2, boolean z2, long j3) {
        prepareSendingDocuments(accountInstance, arrayList, arrayList2, arrayList3, str, null, str2, j, messageObject, messageObject2, storyItem, replyQuote, messageObject3, z, i, 0, inputContentInfoCompat, str3, i2, j2, z2, j3, 0L, null);
    }

    public static void prepareSendingDocuments(final AccountInstance accountInstance, final ArrayList<String> arrayList, final ArrayList<String> arrayList2, final ArrayList<Uri> arrayList3, final String str, final ArrayList<TLRPC.MessageEntity> arrayList4, final String str2, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final MessageObject messageObject3, final boolean z, final int i, final int i2, final InputContentInfoCompat inputContentInfoCompat, final String str3, final int i3, final long j2, final boolean z2, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) {
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            return;
        }
        if (arrayList == null || arrayList2 == null || arrayList.size() == arrayList2.size()) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    SendMessagesHelper.$r8$lambda$OTB8OXqpaSzvR8g_yN5Hu4UnqXg(j, arrayList, str, accountInstance, i, arrayList2, str2, messageObject, messageObject2, storyItem, replyQuote, arrayList4, messageObject3, z, i2, inputContentInfoCompat, str3, i3, j2, z2, j3, j4, messageSuggestionParams, arrayList3);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void $r8$lambda$OTB8OXqpaSzvR8g_yN5Hu4UnqXg(long j, ArrayList arrayList, String str, AccountInstance accountInstance, int i, ArrayList arrayList2, String str2, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, ArrayList arrayList3, MessageObject messageObject3, boolean z, int i2, InputContentInfoCompat inputContentInfoCompat, String str3, int i3, long j2, boolean z2, long j3, long j4, MessageSuggestionParams messageSuggestionParams, ArrayList arrayList4) throws Throwable {
        int i4;
        boolean z3;
        ArrayList arrayList5 = arrayList;
        int i5 = i;
        int i6 = 1;
        long[] jArr = new long[1];
        Integer[] numArr = new Integer[1];
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        int i7 = 10;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            z3 = true;
            int i8 = 0;
            i4 = 0;
            int i9 = 0;
            while (i8 < size) {
                String str4 = i8 == 0 ? str : null;
                if (!zIsEncryptedDialog && size > i6 && i9 % 10 == 0) {
                    long j5 = jArr[0];
                    if (j5 != 0) {
                        finishGroup(accountInstance, j5, i5);
                    }
                    jArr[0] = Utilities.random.nextLong();
                    i9 = 0;
                }
                int i10 = i9 + 1;
                long j6 = jArr[0];
                int i11 = i6;
                Integer[] numArr2 = numArr;
                int i12 = i5;
                int i13 = size;
                int i14 = i8;
                int iPrepareSendingDocumentInternal = prepareSendingDocumentInternal(accountInstance, (String) arrayList5.get(i8), (String) arrayList2.get(i8), null, str2, j, messageObject, messageObject2, storyItem, replyQuote, i8 == 0 ? arrayList3 : null, messageObject3, jArr, (i10 == i7 || i8 == size + (-1)) ? i11 : 0, str4, z, i12, i2, numArr2, inputContentInfoCompat == null ? i11 : 0, str3, i3, z3 ? j2 : 0L, z2, j3, j4, messageSuggestionParams);
                long j7 = jArr[0];
                i9 = (j6 != j7 || j7 == -1) ? 1 : i10;
                i8 = i14 + 1;
                arrayList5 = arrayList;
                i4 = iPrepareSendingDocumentInternal;
                i5 = i12;
                numArr = numArr2;
                z3 = false;
                size = i13;
                i6 = 1;
                i7 = 10;
            }
        } else {
            i4 = 0;
            z3 = true;
        }
        int i15 = i5;
        Integer[] numArr3 = numArr;
        if (arrayList4 != null) {
            jArr[0] = 0;
            int size2 = arrayList4.size();
            int i16 = 0;
            int i17 = 0;
            while (i16 < arrayList4.size()) {
                String str5 = (i16 == 0 && (arrayList == null || arrayList.size() == 0)) ? str : null;
                ArrayList arrayList6 = (i16 == 0 && (arrayList == null || arrayList.size() == 0)) ? arrayList3 : null;
                if (!zIsEncryptedDialog && size2 > 1 && i17 % 10 == 0) {
                    long j8 = jArr[0];
                    if (j8 != 0) {
                        finishGroup(accountInstance, j8, i15);
                    }
                    jArr[0] = Utilities.random.nextLong();
                    i17 = 0;
                }
                int i18 = i17 + 1;
                long j9 = jArr[0];
                int i19 = size2;
                int i20 = i16;
                int iPrepareSendingDocumentInternal2 = prepareSendingDocumentInternal(accountInstance, null, null, (Uri) arrayList4.get(i16), str2, j, messageObject, messageObject2, storyItem, replyQuote, arrayList6, messageObject3, jArr, i18 == 10 || i16 == size2 + (-1), str5, z, i, i2, numArr3, inputContentInfoCompat == null, str3, i3, z3 ? j2 : 0L, z2, j3, j4, messageSuggestionParams);
                long j10 = jArr[0];
                i17 = (j9 != j10 || j10 == -1) ? 1 : i18;
                i16 = i20 + 1;
                i15 = i;
                i4 = iPrepareSendingDocumentInternal2;
                z3 = false;
                size2 = i19;
            }
        }
        if (inputContentInfoCompat != null) {
            inputContentInfoCompat.releasePermission();
        }
        handleError(i4, accountInstance);
    }

    private static void handleError(final int i, final AccountInstance accountInstance) {
        if (i != 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.$r8$lambda$vXL7ho_ggYDskgl6cWD4BYeq2xE(i, accountInstance);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$vXL7ho_ggYDskgl6cWD4BYeq2xE(int i, AccountInstance accountInstance) {
        try {
            if (i == 1) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.UnsupportedAttachment));
            } else if (i == 2) {
                NotificationCenter.getInstance(accountInstance.getCurrentAccount()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserShowLimitReachedDialog, 6);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, ChatActivity.ReplyQuote replyQuote, CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, boolean z, int i2, int i3, String str2, int i4) {
        prepareSendingPhoto(accountInstance, str, null, uri, j, messageObject, messageObject2, null, null, arrayList, arrayList2, inputContentInfoCompat, i, messageObject3, null, z, i2, 0, i3, false, charSequence, str2, i4, 0L, 0L, 0L, null);
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, String str2, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, VideoEditedInfo videoEditedInfo, boolean z, int i2, int i3, boolean z2, CharSequence charSequence, String str3, int i4, long j2, long j3) {
        prepareSendingPhoto(accountInstance, str, str2, uri, j, messageObject, messageObject2, storyItem, replyQuote, arrayList, arrayList2, inputContentInfoCompat, i, messageObject3, videoEditedInfo, z, i2, 0, i3, z2, charSequence, str3, i4, j2, j3, 0L, null);
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, String str2, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, VideoEditedInfo videoEditedInfo, boolean z, int i2, int i3, int i4, boolean z2, CharSequence charSequence, String str3, int i5, long j2, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        SendingMediaInfo sendingMediaInfo = new SendingMediaInfo();
        sendingMediaInfo.path = str;
        sendingMediaInfo.thumbPath = str2;
        sendingMediaInfo.uri = uri;
        if (charSequence != null) {
            sendingMediaInfo.caption = charSequence.toString();
        }
        sendingMediaInfo.entities = arrayList;
        sendingMediaInfo.ttl = i;
        if (arrayList2 != null) {
            sendingMediaInfo.masks = new ArrayList<>(arrayList2);
        }
        sendingMediaInfo.videoEditedInfo = videoEditedInfo;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(sendingMediaInfo);
        prepareSendingMedia(accountInstance, arrayList3, j, messageObject, messageObject2, null, replyQuote, z2, false, messageObject3, z, i2, 0, i4, false, inputContentInfoCompat, str3, i5, j2, false, j3, j4, messageSuggestionParams);
    }

    public static void prepareSendingBotContextResult(BaseFragment baseFragment, AccountInstance accountInstance, TLRPC.BotInlineResult botInlineResult, HashMap<String, String> map, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, boolean z, int i, int i2, String str, int i3, long j2) {
        prepareSendingBotContextResult(baseFragment, accountInstance, botInlineResult, map, j, messageObject, messageObject2, storyItem, replyQuote, z, i, i2, str, i3, j2, 0L);
    }

    public static void prepareSendingBotContextResult(final BaseFragment baseFragment, final AccountInstance accountInstance, final TLRPC.BotInlineResult botInlineResult, final HashMap<String, String> map, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final boolean z, final int i, final int i2, final String str, final int i3, final long j2, final long j3) {
        SendMessageParams sendMessageParamsM1179of;
        TLRPC.TL_webPagePending tL_webPagePending;
        if (botInlineResult == null) {
            return;
        }
        TLRPC.BotInlineMessage botInlineMessage = botInlineResult.send_message;
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaAuto) {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.$r8$lambda$zRsj53eIdoyWyT3uhyj3X0WYKqY(j, botInlineResult, accountInstance, map, baseFragment, messageObject, messageObject2, z, i, i2, str, i3, storyItem, replyQuote, j2, j3);
                }
            }).run();
            return;
        }
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageText) {
            if (DialogObject.isEncryptedDialog(j)) {
                for (int i4 = 0; i4 < botInlineResult.send_message.entities.size(); i4++) {
                    TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) botInlineResult.send_message.entities.get(i4);
                    if (messageEntity instanceof TLRPC.TL_messageEntityUrl) {
                        tL_webPagePending = new TLRPC.TL_webPagePending();
                        String str2 = botInlineResult.send_message.message;
                        int i5 = messageEntity.offset;
                        tL_webPagePending.url = str2.substring(i5, messageEntity.length + i5);
                        break;
                    }
                }
                tL_webPagePending = null;
            } else {
                tL_webPagePending = null;
            }
            TLRPC.TL_webPagePending tL_webPagePending2 = tL_webPagePending;
            TLRPC.BotInlineMessage botInlineMessage2 = botInlineResult.send_message;
            SendMessageParams sendMessageParamsM1175of = SendMessageParams.m1175of(botInlineMessage2.message, j, messageObject, messageObject2, tL_webPagePending2, !botInlineMessage2.no_webpage, botInlineMessage2.entities, botInlineMessage2.reply_markup, map, z, i, i2, null, false);
            sendMessageParamsM1175of.quick_reply_shortcut = str;
            sendMessageParamsM1175of.quick_reply_shortcut_id = i3;
            sendMessageParamsM1175of.replyQuote = replyQuote;
            sendMessageParamsM1175of.payStars = j2;
            sendMessageParamsM1175of.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1175of);
            return;
        }
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaVenue) {
            TLRPC.TL_messageMediaVenue tL_messageMediaVenue = new TLRPC.TL_messageMediaVenue();
            TLRPC.BotInlineMessage botInlineMessage3 = botInlineResult.send_message;
            tL_messageMediaVenue.geo = botInlineMessage3.geo;
            tL_messageMediaVenue.address = botInlineMessage3.address;
            tL_messageMediaVenue.title = botInlineMessage3.title;
            tL_messageMediaVenue.provider = botInlineMessage3.provider;
            tL_messageMediaVenue.venue_id = botInlineMessage3.venue_id;
            String str3 = botInlineMessage3.venue_type;
            tL_messageMediaVenue.venue_id = str3;
            tL_messageMediaVenue.venue_type = str3;
            if (str3 == null) {
                tL_messageMediaVenue.venue_type = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            SendMessageParams sendMessageParamsM1179of2 = SendMessageParams.m1179of(tL_messageMediaVenue, j, messageObject, messageObject2, botInlineMessage3.reply_markup, map, z, i, i2);
            sendMessageParamsM1179of2.quick_reply_shortcut = str;
            sendMessageParamsM1179of2.quick_reply_shortcut_id = i3;
            sendMessageParamsM1179of2.replyQuote = replyQuote;
            sendMessageParamsM1179of2.payStars = j2;
            sendMessageParamsM1179of2.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1179of2);
            return;
        }
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaGeo) {
            if (botInlineMessage.period != 0 || botInlineMessage.proximity_notification_radius != 0) {
                TLRPC.TL_messageMediaGeoLive tL_messageMediaGeoLive = new TLRPC.TL_messageMediaGeoLive();
                TLRPC.BotInlineMessage botInlineMessage4 = botInlineResult.send_message;
                int i6 = botInlineMessage4.period;
                if (i6 == 0) {
                    i6 = 900;
                }
                tL_messageMediaGeoLive.period = i6;
                tL_messageMediaGeoLive.geo = botInlineMessage4.geo;
                tL_messageMediaGeoLive.heading = botInlineMessage4.heading;
                tL_messageMediaGeoLive.proximity_notification_radius = botInlineMessage4.proximity_notification_radius;
                sendMessageParamsM1179of = SendMessageParams.m1179of(tL_messageMediaGeoLive, j, messageObject, messageObject2, botInlineMessage4.reply_markup, map, z, i, i2);
            } else {
                TLRPC.TL_messageMediaGeo tL_messageMediaGeo = new TLRPC.TL_messageMediaGeo();
                TLRPC.BotInlineMessage botInlineMessage5 = botInlineResult.send_message;
                tL_messageMediaGeo.geo = botInlineMessage5.geo;
                tL_messageMediaGeo.heading = botInlineMessage5.heading;
                sendMessageParamsM1179of = SendMessageParams.m1179of(tL_messageMediaGeo, j, messageObject, messageObject2, botInlineMessage5.reply_markup, map, z, i, i2);
            }
            sendMessageParamsM1179of.quick_reply_shortcut = str;
            sendMessageParamsM1179of.quick_reply_shortcut_id = i3;
            sendMessageParamsM1179of.replyQuote = replyQuote;
            sendMessageParamsM1179of.payStars = j2;
            sendMessageParamsM1179of.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1179of);
            return;
        }
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaContact) {
            TLRPC.TL_user tL_user = new TLRPC.TL_user();
            TLRPC.BotInlineMessage botInlineMessage6 = botInlineResult.send_message;
            tL_user.phone = botInlineMessage6.phone_number;
            tL_user.first_name = botInlineMessage6.first_name;
            tL_user.last_name = botInlineMessage6.last_name;
            TLRPC.RestrictionReason restrictionReason = new TLRPC.RestrictionReason();
            restrictionReason.text = botInlineResult.send_message.vcard;
            restrictionReason.platform = _UrlKt.FRAGMENT_ENCODE_SET;
            restrictionReason.reason = _UrlKt.FRAGMENT_ENCODE_SET;
            tL_user.restriction_reason.add(restrictionReason);
            SendMessageParams sendMessageParamsM1187of = SendMessageParams.m1187of(tL_user, j, messageObject, messageObject2, botInlineResult.send_message.reply_markup, map, z, i, i2);
            sendMessageParamsM1187of.quick_reply_shortcut = str;
            sendMessageParamsM1187of.quick_reply_shortcut_id = i3;
            sendMessageParamsM1187of.replyQuote = replyQuote;
            sendMessageParamsM1187of.payStars = j2;
            sendMessageParamsM1187of.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1187of);
            return;
        }
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaInvoice) {
            if (DialogObject.isEncryptedDialog(j)) {
                return;
            }
            TLRPC.TL_botInlineMessageMediaInvoice tL_botInlineMessageMediaInvoice = (TLRPC.TL_botInlineMessageMediaInvoice) botInlineResult.send_message;
            TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice = new TLRPC.TL_messageMediaInvoice();
            tL_messageMediaInvoice.shipping_address_requested = tL_botInlineMessageMediaInvoice.shipping_address_requested;
            tL_messageMediaInvoice.test = tL_botInlineMessageMediaInvoice.test;
            tL_messageMediaInvoice.title = tL_botInlineMessageMediaInvoice.title;
            tL_messageMediaInvoice.description = tL_botInlineMessageMediaInvoice.description;
            TLRPC.WebDocument webDocument = tL_botInlineMessageMediaInvoice.photo;
            if (webDocument != null) {
                tL_messageMediaInvoice.webPhoto = webDocument;
                tL_messageMediaInvoice.flags |= 1;
            }
            tL_messageMediaInvoice.currency = tL_botInlineMessageMediaInvoice.currency;
            tL_messageMediaInvoice.total_amount = tL_botInlineMessageMediaInvoice.total_amount;
            tL_messageMediaInvoice.start_param = _UrlKt.FRAGMENT_ENCODE_SET;
            SendMessageParams sendMessageParamsM1183of = SendMessageParams.m1183of(tL_messageMediaInvoice, j, messageObject, messageObject2, botInlineResult.send_message.reply_markup, map, z, i, i2);
            sendMessageParamsM1183of.quick_reply_shortcut = str;
            sendMessageParamsM1183of.quick_reply_shortcut_id = i3;
            sendMessageParamsM1183of.replyQuote = replyQuote;
            sendMessageParamsM1183of.payStars = j2;
            sendMessageParamsM1183of.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1183of);
            return;
        }
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaWebPage) {
            TLRPC.TL_webPagePending tL_webPagePending3 = new TLRPC.TL_webPagePending();
            tL_webPagePending3.url = ((TLRPC.TL_botInlineMessageMediaWebPage) botInlineMessage).url;
            TLRPC.BotInlineMessage botInlineMessage7 = botInlineResult.send_message;
            SendMessageParams sendMessageParamsM1175of2 = SendMessageParams.m1175of(botInlineMessage7.message, j, messageObject, messageObject2, tL_webPagePending3, !botInlineMessage7.no_webpage, botInlineMessage7.entities, botInlineMessage7.reply_markup, map, z, i, i2, null, false);
            sendMessageParamsM1175of2.quick_reply_shortcut = str;
            sendMessageParamsM1175of2.quick_reply_shortcut_id = i3;
            sendMessageParamsM1175of2.replyQuote = replyQuote;
            sendMessageParamsM1175of2.payStars = j2;
            sendMessageParamsM1175of2.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1175of2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:191:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x054c  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c7  */
    /* JADX WARN: Type inference failed for: r14v10, types: [org.telegram.tgnet.TLRPC$TL_photo] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$zRsj53eIdoyWyT3uhyj3X0WYKqY(long j, final TLRPC.BotInlineResult botInlineResult, AccountInstance accountInstance, final HashMap map, final BaseFragment baseFragment, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final int i2, final String str, final int i3, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final long j2, final long j3) {
        File file;
        String absolutePath;
        String str2;
        TLRPC.TL_document tL_document;
        TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename;
        String str3;
        Bitmap bitmapLoadBitmap;
        Object obj;
        TLRPC.TL_document tL_document2;
        TLRPC.TL_game tL_game;
        final ?? r14;
        final Bitmap[] bitmapArr;
        final String[] strArr;
        AccountInstance accountInstance2;
        TLRPC.TL_document tL_document3;
        final long j4;
        TLRPC.InputPeer inputPeer;
        boolean z2;
        int i4;
        TLRPC.WebDocument webDocument;
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        if ("game".equals(botInlineResult.type)) {
            if (zIsEncryptedDialog) {
                return;
            }
            tL_game = new TLRPC.TL_game();
            tL_game.title = botInlineResult.title;
            tL_game.description = botInlineResult.description;
            tL_game.short_name = botInlineResult.f1658id;
            TLRPC.Photo photo = botInlineResult.photo;
            tL_game.photo = photo;
            if (photo == null) {
                tL_game.photo = new TLRPC.TL_photoEmpty();
            }
            TLRPC.Document document = botInlineResult.document;
            if (document instanceof TLRPC.TL_document) {
                tL_game.document = document;
                tL_game.flags |= 1;
            }
            tL_document2 = null;
        } else if (botInlineResult instanceof TLRPC.TL_botInlineMediaResult) {
            TLRPC.Document document2 = botInlineResult.document;
            if (document2 != null) {
                if (document2 instanceof TLRPC.TL_document) {
                    tL_document2 = (TLRPC.TL_document) document2;
                    tL_game = null;
                    obj = null;
                    r14 = obj;
                    if (map != null && (webDocument = botInlineResult.content) != null) {
                        map.put("originalPath", webDocument.url);
                    }
                    bitmapArr = new Bitmap[1];
                    strArr = new String[1];
                    if (zIsEncryptedDialog && tL_document2 != null) {
                        for (i4 = 0; i4 < tL_document2.attributes.size(); i4++) {
                            if (tL_document2.attributes.get(i4) instanceof TLRPC.TL_documentAttributeVideo) {
                                TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) tL_document2.attributes.get(i4);
                                TLRPC.TL_documentAttributeVideo_layer159 tL_documentAttributeVideo_layer159 = new TLRPC.TL_documentAttributeVideo_layer159();
                                tL_documentAttributeVideo_layer159.flags = tL_documentAttributeVideo.flags;
                                tL_documentAttributeVideo_layer159.round_message = tL_documentAttributeVideo.round_message;
                                tL_documentAttributeVideo_layer159.supports_streaming = tL_documentAttributeVideo.supports_streaming;
                                tL_documentAttributeVideo_layer159.duration = tL_documentAttributeVideo.duration;
                                tL_documentAttributeVideo_layer159.f1671w = tL_documentAttributeVideo.f1671w;
                                tL_documentAttributeVideo_layer159.f1670h = tL_documentAttributeVideo.f1670h;
                                tL_document2.attributes.set(i4, tL_documentAttributeVideo_layer159);
                            }
                        }
                    }
                    if (MessageObject.isGifDocument(tL_document2)) {
                        accountInstance2 = accountInstance;
                        tL_document3 = tL_document2;
                    } else {
                        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_document2.thumbs, 320);
                        File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document2);
                        if (pathToAttach.exists()) {
                            z2 = true;
                        } else {
                            z2 = true;
                            pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document2, true);
                        }
                        String absolutePath2 = pathToAttach.getAbsolutePath();
                        boolean z3 = z2;
                        tL_document3 = tL_document2;
                        accountInstance2 = accountInstance;
                        ensureMediaThumbExists(accountInstance2, zIsEncryptedDialog, tL_document3, absolutePath2, null, 0L);
                        strArr[0] = getKeyForPhotoSize(accountInstance2, closestPhotoSizeWithSize, bitmapArr, z3, z3);
                    }
                    if (DialogObject.isEncryptedDialog(j)) {
                        j4 = j;
                        inputPeer = accountInstance2.getMessagesController().getInputPeer(j4);
                    } else {
                        j4 = j;
                        inputPeer = null;
                    }
                    if (inputPeer == null && inputPeer.user_id != 0 && accountInstance2.getMessagesController().getUserFull(inputPeer.user_id) != null && accountInstance2.getMessagesController().getUserFull(inputPeer.user_id).voice_messages_forbidden && tL_document3 != null) {
                        if (MessageObject.isVoiceDocument(tL_document3)) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda21
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AlertsCreator.showSendMediaAlert(7, baseFragment, null);
                                }
                            });
                            return;
                        } else {
                            if (MessageObject.isRoundVideoDocument(tL_document3)) {
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda22
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.showSendMediaAlert(8, baseFragment, null);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                    }
                    final TLRPC.TL_game tL_game2 = tL_game;
                    final AccountInstance accountInstance3 = accountInstance2;
                    final TLRPC.TL_document tL_document4 = tL_document3;
                    final ?? r4 = obj;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda23
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.$r8$lambda$FH7RAmGC4OK5xqbpC0L0P7RmOmA(tL_document4, bitmapArr, strArr, r4, j4, messageObject, messageObject2, botInlineResult, map, z, i, i2, r14, tL_game2, str, i3, storyItem, replyQuote, j2, j3, accountInstance3);
                        }
                    });
                }
            } else {
                TLRPC.Photo photo2 = botInlineResult.photo;
                if (photo2 != null && (photo2 instanceof TLRPC.TL_photo)) {
                    r14 = (TLRPC.TL_photo) photo2;
                    tL_game = null;
                    tL_document2 = null;
                    obj = null;
                    if (map != null) {
                        map.put("originalPath", webDocument.url);
                    }
                    bitmapArr = new Bitmap[1];
                    strArr = new String[1];
                    if (zIsEncryptedDialog) {
                        while (i4 < tL_document2.attributes.size()) {
                        }
                    }
                    if (MessageObject.isGifDocument(tL_document2)) {
                    }
                    if (DialogObject.isEncryptedDialog(j)) {
                    }
                    if (inputPeer == null) {
                    }
                    final TLRPC.TL_game tL_game22 = tL_game;
                    final AccountInstance accountInstance32 = accountInstance2;
                    final TLRPC.TL_document tL_document42 = tL_document3;
                    final String r42 = obj;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda23
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.$r8$lambda$FH7RAmGC4OK5xqbpC0L0P7RmOmA(tL_document42, bitmapArr, strArr, r42, j4, messageObject, messageObject2, botInlineResult, map, z, i, i2, r14, tL_game22, str, i3, storyItem, replyQuote, j2, j3, accountInstance32);
                        }
                    });
                }
            }
            tL_game = null;
            tL_document2 = null;
        } else {
            TLRPC.WebDocument webDocument2 = botInlineResult.content;
            if (webDocument2 != null) {
                String httpUrlExtension = ImageLoader.getHttpUrlExtension(webDocument2.url, null);
                file = new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.content.url) + (TextUtils.isEmpty(httpUrlExtension) ? FileLoader.getExtensionByMimeType(botInlineResult.content.mime_type) : "." + httpUrlExtension));
                if (file.exists()) {
                    absolutePath = file.getAbsolutePath();
                } else {
                    absolutePath = botInlineResult.content.url;
                }
                str2 = absolutePath;
                String str4 = botInlineResult.type;
                str4.getClass();
                switch (str4) {
                    case "sticker":
                    case "gif":
                    case "file":
                    case "audio":
                    case "video":
                    case "voice":
                        tL_document = new TLRPC.TL_document();
                        tL_document.f1668id = 0L;
                        tL_document.size = 0L;
                        tL_document.dc_id = 0;
                        tL_document.mime_type = botInlineResult.content.mime_type;
                        tL_document.file_reference = new byte[0];
                        tL_document.date = accountInstance.getConnectionsManager().getCurrentTime();
                        tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                        tL_document.attributes.add(tL_documentAttributeFilename);
                        String str5 = botInlineResult.type;
                        str5.getClass();
                        switch (str5) {
                            case "sticker":
                                str3 = str2;
                                TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                                tL_documentAttributeSticker.alt = _UrlKt.FRAGMENT_ENCODE_SET;
                                tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                tL_document.attributes.add(tL_documentAttributeSticker);
                                TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                                int[] inlineResultWidthAndHeight = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                                tL_documentAttributeImageSize.f1671w = inlineResultWidthAndHeight[0];
                                tL_documentAttributeImageSize.f1670h = inlineResultWidthAndHeight[1];
                                tL_document.attributes.add(tL_documentAttributeImageSize);
                                tL_documentAttributeFilename.file_name = "sticker.webp";
                                try {
                                    if (botInlineResult.thumb != null) {
                                        Bitmap bitmapLoadBitmap2 = ImageLoader.loadBitmap(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, "webp")).getAbsolutePath(), null, 90.0f, 90.0f, true);
                                        if (bitmapLoadBitmap2 != null) {
                                            TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap2, 90.0f, 90.0f, 55, false);
                                            if (photoSizeScaleAndSaveImage != null) {
                                                tL_document.thumbs.add(photoSizeScaleAndSaveImage);
                                                tL_document.flags |= 1;
                                            }
                                            bitmapLoadBitmap2.recycle();
                                        }
                                    }
                                    break;
                                } catch (Throwable th) {
                                    FileLog.m1136e(th);
                                    break;
                                }
                                break;
                            case "gif":
                                tL_documentAttributeFilename.file_name = "animation.gif";
                                str3 = str2;
                                if (str3.endsWith("mp4")) {
                                    tL_document.mime_type = "video/mp4";
                                    tL_document.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                } else {
                                    tL_document.mime_type = "image/gif";
                                }
                                int i5 = zIsEncryptedDialog ? 90 : 320;
                                try {
                                    if (str3.endsWith("mp4")) {
                                        bitmapLoadBitmap = createVideoThumbnail(str3, 1);
                                        if (bitmapLoadBitmap == null) {
                                            TLRPC.WebDocument webDocument3 = botInlineResult.thumb;
                                            if ((webDocument3 instanceof TLRPC.TL_webDocument) && "video/mp4".equals(webDocument3.mime_type)) {
                                                String httpUrlExtension2 = ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, null);
                                                bitmapLoadBitmap = createVideoThumbnail(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + (TextUtils.isEmpty(httpUrlExtension2) ? FileLoader.getExtensionByMimeType(botInlineResult.thumb.mime_type) : "." + httpUrlExtension2)).getAbsolutePath(), 1);
                                            }
                                        }
                                    } else {
                                        float f = i5;
                                        bitmapLoadBitmap = ImageLoader.loadBitmap(str3, null, f, f, true);
                                    }
                                    if (bitmapLoadBitmap != null) {
                                        float f2 = i5;
                                        TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, f2, f2, i5 > 90 ? 80 : 55, false);
                                        if (photoSizeScaleAndSaveImage2 != null) {
                                            tL_document.thumbs.add(photoSizeScaleAndSaveImage2);
                                            tL_document.flags |= 1;
                                        }
                                        bitmapLoadBitmap.recycle();
                                    }
                                    break;
                                } catch (Throwable th2) {
                                    FileLog.m1136e(th2);
                                    break;
                                }
                                break;
                            case "file":
                                int iLastIndexOf = botInlineResult.content.mime_type.lastIndexOf(47);
                                if (iLastIndexOf != -1) {
                                    tL_documentAttributeFilename.file_name = "file." + botInlineResult.content.mime_type.substring(iLastIndexOf + 1);
                                } else {
                                    tL_documentAttributeFilename.file_name = "file";
                                }
                                str3 = str2;
                                break;
                            case "audio":
                                TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                                tL_documentAttributeAudio.duration = MessageObject.getInlineResultDuration(botInlineResult);
                                tL_documentAttributeAudio.title = botInlineResult.title;
                                int i6 = tL_documentAttributeAudio.flags;
                                tL_documentAttributeAudio.flags = i6 | 1;
                                String str6 = botInlineResult.description;
                                if (str6 != null) {
                                    tL_documentAttributeAudio.performer = str6;
                                    tL_documentAttributeAudio.flags = i6 | 3;
                                }
                                tL_documentAttributeFilename.file_name = "audio.mp3";
                                tL_document.attributes.add(tL_documentAttributeAudio);
                                str3 = str2;
                                break;
                            case "video":
                                tL_documentAttributeFilename.file_name = "video.mp4";
                                TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo2 = new TLRPC.TL_documentAttributeVideo();
                                int[] inlineResultWidthAndHeight2 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                                tL_documentAttributeVideo2.f1671w = inlineResultWidthAndHeight2[0];
                                tL_documentAttributeVideo2.f1670h = inlineResultWidthAndHeight2[1];
                                tL_documentAttributeVideo2.duration = MessageObject.getInlineResultDuration(botInlineResult);
                                tL_documentAttributeVideo2.supports_streaming = true;
                                tL_document.attributes.add(tL_documentAttributeVideo2);
                                try {
                                    if (botInlineResult.thumb != null) {
                                        Bitmap bitmapLoadBitmap3 = ImageLoader.loadBitmap(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, "jpg")).getAbsolutePath(), null, 90.0f, 90.0f, true);
                                        if (bitmapLoadBitmap3 != null) {
                                            TLRPC.PhotoSize photoSizeScaleAndSaveImage3 = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap3, 90.0f, 90.0f, 55, false);
                                            if (photoSizeScaleAndSaveImage3 != null) {
                                                tL_document.thumbs.add(photoSizeScaleAndSaveImage3);
                                                tL_document.flags |= 1;
                                            }
                                            bitmapLoadBitmap3.recycle();
                                        }
                                    }
                                    break;
                                } catch (Throwable th3) {
                                    FileLog.m1136e(th3);
                                }
                                str3 = str2;
                                break;
                            case "voice":
                                TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio2 = new TLRPC.TL_documentAttributeAudio();
                                tL_documentAttributeAudio2.duration = MessageObject.getInlineResultDuration(botInlineResult);
                                tL_documentAttributeAudio2.voice = true;
                                tL_documentAttributeFilename.file_name = "audio.ogg";
                                tL_document.attributes.add(tL_documentAttributeAudio2);
                                str3 = str2;
                                break;
                            default:
                                str3 = str2;
                                break;
                        }
                        if (tL_documentAttributeFilename.file_name == null) {
                            tL_documentAttributeFilename.file_name = "file";
                        }
                        if (tL_document.mime_type == null) {
                            tL_document.mime_type = "application/octet-stream";
                        }
                        if (tL_document.thumbs.isEmpty()) {
                            TLRPC.TL_photoSize tL_photoSize = new TLRPC.TL_photoSize();
                            int[] inlineResultWidthAndHeight3 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                            tL_photoSize.f1694w = inlineResultWidthAndHeight3[0];
                            tL_photoSize.f1693h = inlineResultWidthAndHeight3[1];
                            tL_photoSize.size = 0;
                            tL_photoSize.location = new TLRPC.TL_fileLocationUnavailable();
                            tL_photoSize.type = "x";
                            tL_document.thumbs.add(tL_photoSize);
                            tL_document.flags |= 1;
                        }
                        obj = str3;
                        tL_document2 = tL_document;
                        tL_game = null;
                        r14 = 0;
                        break;
                    case "photo":
                        TLRPC.TL_photo tL_photoGeneratePhotoSizes = file.exists() ? accountInstance.getSendMessagesHelper().generatePhotoSizes(str2, null) : null;
                        if (tL_photoGeneratePhotoSizes == null) {
                            tL_photoGeneratePhotoSizes = new TLRPC.TL_photo();
                            tL_photoGeneratePhotoSizes.date = accountInstance.getConnectionsManager().getCurrentTime();
                            tL_photoGeneratePhotoSizes.file_reference = new byte[0];
                            TLRPC.TL_photoSize tL_photoSize2 = new TLRPC.TL_photoSize();
                            int[] inlineResultWidthAndHeight4 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                            tL_photoSize2.f1694w = inlineResultWidthAndHeight4[0];
                            tL_photoSize2.f1693h = inlineResultWidthAndHeight4[1];
                            tL_photoSize2.size = 1;
                            tL_photoSize2.location = new TLRPC.TL_fileLocationUnavailable();
                            tL_photoSize2.type = "x";
                            tL_photoGeneratePhotoSizes.sizes.add(tL_photoSize2);
                        }
                        r14 = tL_photoGeneratePhotoSizes;
                        obj = str2;
                        tL_game = null;
                        tL_document2 = null;
                        break;
                    default:
                        obj = str2;
                        tL_game = null;
                        tL_document2 = null;
                        r14 = 0;
                        break;
                }
                if (map != null) {
                }
                bitmapArr = new Bitmap[1];
                strArr = new String[1];
                if (zIsEncryptedDialog) {
                }
                if (MessageObject.isGifDocument(tL_document2)) {
                }
                if (DialogObject.isEncryptedDialog(j)) {
                }
                if (inputPeer == null) {
                }
                final TLRPC.TL_game tL_game222 = tL_game;
                final AccountInstance accountInstance322 = accountInstance2;
                final TLRPC.TL_document tL_document422 = tL_document3;
                final String r422 = obj;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.$r8$lambda$FH7RAmGC4OK5xqbpC0L0P7RmOmA(tL_document422, bitmapArr, strArr, r422, j4, messageObject, messageObject2, botInlineResult, map, z, i, i2, r14, tL_game222, str, i3, storyItem, replyQuote, j2, j3, accountInstance322);
                    }
                });
            }
            tL_game = null;
            tL_document2 = null;
        }
        obj = tL_document2;
        r14 = obj;
        if (map != null) {
        }
        bitmapArr = new Bitmap[1];
        strArr = new String[1];
        if (zIsEncryptedDialog) {
        }
        if (MessageObject.isGifDocument(tL_document2)) {
        }
        if (DialogObject.isEncryptedDialog(j)) {
        }
        if (inputPeer == null) {
        }
        final TLRPC.TL_game tL_game2222 = tL_game;
        final AccountInstance accountInstance3222 = accountInstance2;
        final TLRPC.TL_document tL_document4222 = tL_document3;
        final String r4222 = obj;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.$r8$lambda$FH7RAmGC4OK5xqbpC0L0P7RmOmA(tL_document4222, bitmapArr, strArr, r4222, j4, messageObject, messageObject2, botInlineResult, map, z, i, i2, r14, tL_game2222, str, i3, storyItem, replyQuote, j2, j3, accountInstance3222);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$FH7RAmGC4OK5xqbpC0L0P7RmOmA(TLRPC.TL_document tL_document, Bitmap[] bitmapArr, String[] strArr, String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.BotInlineResult botInlineResult, HashMap map, boolean z, int i, int i2, TLRPC.TL_photo tL_photo, TLRPC.TL_game tL_game, String str2, int i3, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, long j2, long j3, AccountInstance accountInstance) {
        SendMessageParams sendMessageParamsM1182of;
        if (tL_document != null) {
            if (bitmapArr[0] != null && strArr[0] != null) {
                ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
            }
            TLRPC.BotInlineMessage botInlineMessage = botInlineResult.send_message;
            sendMessageParamsM1182of = SendMessageParams.m1180of(tL_document, null, str, j, messageObject, messageObject2, botInlineMessage.message, botInlineMessage.entities, botInlineMessage.reply_markup, map, z, i, i2, 0, botInlineResult, null, false);
        } else {
            sendMessageParamsM1182of = null;
            if (tL_photo != null) {
                TLRPC.WebDocument webDocument = botInlineResult.content;
                String str3 = webDocument != null ? webDocument.url : null;
                TLRPC.BotInlineMessage botInlineMessage2 = botInlineResult.send_message;
                sendMessageParamsM1182of = SendMessageParams.m1185of(tL_photo, str3, j, messageObject, messageObject2, botInlineMessage2.message, botInlineMessage2.entities, botInlineMessage2.reply_markup, map, z, i, i2, 0, botInlineResult, false);
            } else if (tL_game != null) {
                sendMessageParamsM1182of = SendMessageParams.m1182of(tL_game, j, messageObject, messageObject2, botInlineResult.send_message.reply_markup, (HashMap<String, String>) map, z, i, i2);
            }
        }
        if (sendMessageParamsM1182of != null) {
            sendMessageParamsM1182of.quick_reply_shortcut = str2;
            sendMessageParamsM1182of.quick_reply_shortcut_id = i3;
            sendMessageParamsM1182of.replyToStoryItem = storyItem;
            sendMessageParamsM1182of.replyQuote = replyQuote;
            sendMessageParamsM1182of.payStars = j2;
            sendMessageParamsM1182of.monoForumPeer = j3;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1182of);
        }
    }

    public static String getTrimmedString(String str) {
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return strTrim;
        }
        while (str.startsWith("\n")) {
            str = str.substring(1);
        }
        while (str.endsWith("\n")) {
            str = str.substring(0, str.length() - 1);
        }
        return str;
    }

    public static void prepareSendingText(AccountInstance accountInstance, String str, long j, boolean z, int i, int i2, long j2) {
        prepareSendingText(accountInstance, str, j, 0L, z, i, i2, j2);
    }

    public static void prepareSendingText(final AccountInstance accountInstance, final String str, final long j, final long j2, final boolean z, final int i, final int i2, final long j3) {
        accountInstance.getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda84
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.$r8$lambda$eKvYFbextEcalUD8BSF_ZseTN7w(str, j, accountInstance, j, z, i, i, j);
                            }
                        });
                    }
                });
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$eKvYFbextEcalUD8BSF_ZseTN7w(String str, long j, AccountInstance accountInstance, long j2, boolean z, int i, int i2, long j3) {
        long j4;
        MessageObject messageObject;
        String trimmedString = getTrimmedString(str);
        if (trimmedString.length() != 0) {
            int iCeil = (int) Math.ceil(trimmedString.length() / 4096.0f);
            int i3 = 0;
            if (j != 0) {
                j4 = j2;
                TLRPC.TL_forumTopic tL_forumTopicFindTopic = accountInstance.getMessagesController().getTopicsController().findTopic(-j4, j);
                if (tL_forumTopicFindTopic != null && tL_forumTopicFindTopic.topicStartMessage != null) {
                    messageObject = new MessageObject(accountInstance.getCurrentAccount(), tL_forumTopicFindTopic.topicStartMessage, false, false);
                    messageObject.isTopicMainMessage = true;
                }
                MessageObject messageObject2 = messageObject;
                while (i3 < iCeil) {
                    int i4 = i3 + 1;
                    SendMessageParams sendMessageParamsM1175of = SendMessageParams.m1175of(trimmedString.substring(i3 * 4096, Math.min(i4 * 4096, trimmedString.length())), j4, messageObject2, messageObject2, null, true, null, null, null, z, i, i2, null, false);
                    if (i3 == 0) {
                        sendMessageParamsM1175of.effect_id = j3;
                    }
                    accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1175of);
                    j4 = j2;
                    i3 = i4;
                }
            }
            j4 = j2;
            messageObject = null;
            MessageObject messageObject22 = messageObject;
            while (i3 < iCeil) {
            }
        }
    }

    public static void ensureMediaThumbExists(AccountInstance accountInstance, boolean z, TLObject tLObject, String str, Uri uri, long j) {
        ensureMediaThumbExists(accountInstance, z, tLObject, str, uri, j, false);
    }

    public static void ensureMediaThumbExists(AccountInstance accountInstance, boolean z, TLObject tLObject, String str, Uri uri, long j, boolean z2) {
        TLRPC.PhotoSize photoSizeScaleAndSaveImage;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage2;
        if (tLObject instanceof TLRPC.TL_photo) {
            TLRPC.TL_photo tL_photo = (TLRPC.TL_photo) tLObject;
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_photo.sizes, 90);
            boolean zExists = ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoPathSize)) ? true : FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize, true).exists();
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tL_photo.sizes, AndroidUtilities.getPhotoSize(z2));
            boolean zExists2 = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize2, false).exists();
            if (zExists && zExists2) {
                return;
            }
            Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), true);
            if (bitmapLoadBitmap == null) {
                bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, 800.0f, 800.0f, true);
            }
            Bitmap bitmap = bitmapLoadBitmap;
            if (!zExists2 && (photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize2, bitmap, Bitmap.CompressFormat.JPEG, true, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), 80, false, 101, 101, false)) != closestPhotoSizeWithSize2) {
                tL_photo.sizes.add(0, photoSizeScaleAndSaveImage2);
            }
            if (!zExists && (photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize, bitmap, 90.0f, 90.0f, 55, true, false)) != closestPhotoSizeWithSize) {
                tL_photo.sizes.add(0, photoSizeScaleAndSaveImage);
            }
            if (bitmap != null) {
                bitmap.recycle();
                return;
            }
            return;
        }
        if (tLObject instanceof TLRPC.TL_document) {
            TLRPC.TL_document tL_document = (TLRPC.TL_document) tLObject;
            if ((MessageObject.isVideoDocument(tL_document) || MessageObject.isNewGifDocument(tL_document)) && MessageObject.isDocumentHasThumb(tL_document)) {
                TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(tL_document.thumbs, 320);
                if ((closestPhotoSizeWithSize3 instanceof TLRPC.TL_photoStrippedSize) || (closestPhotoSizeWithSize3 instanceof TLRPC.TL_photoPathSize) || FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize3, true).exists()) {
                    return;
                }
                Bitmap bitmapCreateVideoThumbnailAtTime = createVideoThumbnailAtTime(str, j);
                if (bitmapCreateVideoThumbnailAtTime == null) {
                    bitmapCreateVideoThumbnailAtTime = createVideoThumbnail(str, 1);
                }
                int i = z ? 90 : 320;
                float f = i;
                tL_document.thumbs.set(0, ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize3, bitmapCreateVideoThumbnailAtTime, f, f, i > 90 ? 80 : 55, false, true));
            }
        }
    }

    public static String getKeyForPhotoSize(AccountInstance accountInstance, TLRPC.PhotoSize photoSize, Bitmap[] bitmapArr, boolean z, boolean z2) {
        if (photoSize == null || photoSize.location == null) {
            return null;
        }
        Point messageSize = ChatMessageCell.getMessageSize(photoSize.f1694w, photoSize.f1693h);
        if (bitmapArr != null) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(photoSize, z2);
                FileInputStream fileInputStream = new FileInputStream(pathToAttach);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
                float fMax = Math.max(options.outWidth / messageSize.f2016x, options.outHeight / messageSize.f2017y);
                if (fMax < 1.0f) {
                    fMax = 1.0f;
                }
                options.inJustDecodeBounds = false;
                options.inSampleSize = (int) fMax;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                FileInputStream fileInputStream2 = new FileInputStream(pathToAttach);
                bitmapArr[0] = BitmapFactory.decodeStream(fileInputStream2, null, options);
                fileInputStream2.close();
            } catch (Throwable unused) {
            }
        }
        return String.format(Locale.US, z ? "%d_%d@%d_%d_b" : "%d_%d@%d_%d", Long.valueOf(photoSize.location.volume_id), Integer.valueOf(photoSize.location.local_id), Integer.valueOf((int) (messageSize.f2016x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.f2017y / AndroidUtilities.density)));
    }

    public static boolean shouldSendWebPAsSticker(String str, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str != null) {
            try {
                BitmapFactory.decodeFile(str, options);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        } else {
            try {
                InputStream inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                try {
                    BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                } finally {
                }
            } catch (Exception unused) {
            }
        }
        return options.outWidth < 800 && options.outHeight < 800;
    }

    public static void prepareSendingMedia(final AccountInstance accountInstance, final ArrayList<SendingMediaInfo> arrayList, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final boolean z, boolean z2, final MessageObject messageObject3, final boolean z3, final int i, final int i2, int i3, final boolean z4, final InputContentInfoCompat inputContentInfoCompat, final String str, final int i4, final long j2, final boolean z5, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) {
        final boolean z6;
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                z6 = z2;
                break;
            } else {
                if (arrayList.get(i5).ttl > 0) {
                    z6 = false;
                    break;
                }
                i5++;
            }
        }
        mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingMedia$112(arrayList, j, z, z6, accountInstance, messageObject3, messageObject, messageObject2, z3, i, i2, storyItem, replyQuote, str, i4, j2, z5, j3, j4, messageSuggestionParams, inputContentInfoCompat, z4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(13:371|(1:376)(1:375)|377|(4:379|(2:382|380)|744|383)|(1:385)|(1:387)|(7:728|389|390|(0)|(4:403|(2:405|(0))(1:408)|407|409)(1:410)|411|742)(1:395)|718|396|(1:398)|(0)(0)|411|742) */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0913, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x032c A[Catch: Exception -> 0x030f, TRY_LEAVE, TryCatch #1 {Exception -> 0x030f, blocks: (B:142:0x0307, B:149:0x0314, B:153:0x0323, B:156:0x032c), top: B:704:0x0307 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0674  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x06e6  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x06f2  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x06f7  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x074b  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0919  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0947  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0b86  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0c2f  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0c4a  */
    /* JADX WARN: Removed duplicated region for block: B:530:0x0ca6  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0cab  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0cb1  */
    /* JADX WARN: Removed duplicated region for block: B:536:0x0cc0  */
    /* JADX WARN: Removed duplicated region for block: B:541:0x0ccb  */
    /* JADX WARN: Removed duplicated region for block: B:562:0x0d25  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0d40  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x0e0e  */
    /* JADX WARN: Removed duplicated region for block: B:630:0x0e68  */
    /* JADX WARN: Removed duplicated region for block: B:633:0x0e71  */
    /* JADX WARN: Removed duplicated region for block: B:635:0x0e76  */
    /* JADX WARN: Removed duplicated region for block: B:645:0x0eb2  */
    /* JADX WARN: Removed duplicated region for block: B:657:0x0ef8 A[LOOP:4: B:655:0x0ef0->B:657:0x0ef8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:710:0x031e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:712:0x0339 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:732:0x065e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:745:0x0e1c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0192  */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v47, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v104, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v106 */
    /* JADX WARN: Type inference failed for: r6v49, types: [org.telegram.messenger.MediaController$PhotoEntry] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v63 */
    /* JADX WARN: Type inference failed for: r7v70 */
    /* JADX WARN: Type inference failed for: r7v71 */
    /* JADX WARN: Type inference failed for: r7v72 */
    /* JADX WARN: Type inference failed for: r7v73 */
    /* JADX WARN: Type inference failed for: r7v76 */
    /* JADX WARN: Type inference failed for: r7v77 */
    /* JADX WARN: Type inference failed for: r7v78 */
    /* JADX WARN: Type inference failed for: r7v79 */
    /* JADX WARN: Type inference failed for: r7v81 */
    /* JADX WARN: Type inference failed for: r7v82 */
    /* JADX WARN: Type inference failed for: r7v87 */
    /* JADX WARN: Type inference failed for: r9v65 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$prepareSendingMedia$112(ArrayList arrayList, final long j, boolean z, boolean z2, final AccountInstance accountInstance, final MessageObject messageObject, final MessageObject messageObject2, final MessageObject messageObject3, final boolean z3, final int i, final int i2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final String str, final int i3, final long j2, final boolean z4, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams, InputContentInfoCompat inputContentInfoCompat, final boolean z5) {
        ?? r7;
        int i4;
        AccountInstance accountInstance2;
        HashMap map;
        boolean z6;
        int i5;
        long j5;
        boolean z7;
        HashMap map2;
        String str2;
        String str3;
        String str4;
        int i6;
        long j6;
        VideoEditedInfo videoEditedInfoCreateCompressionSettings;
        int i7;
        Object obj;
        String str5;
        String str6;
        String str7;
        long j7;
        boolean z8;
        boolean z9;
        Object obj2;
        String str8;
        int i8;
        int i9;
        File file;
        String str9;
        Object obj3;
        Object obj4;
        VideoEditedInfo videoEditedInfo;
        String str10;
        TLRPC.TL_document tL_document;
        boolean z10;
        AccountInstance accountInstance3;
        SendingMediaInfo sendingMediaInfo;
        String str11;
        Object obj5;
        Object obj6;
        Object obj7;
        VideoEditedInfo videoEditedInfo2;
        Object obj8;
        Object obj9;
        Bitmap bitmap;
        String keyForPhotoSize;
        int i10;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage;
        TLRPC.PhotoSize photoSizeFileToSize;
        String absolutePath;
        final HashMap map3;
        String str12;
        long j8;
        int i11;
        int i12;
        ArrayList<TLRPC.InputDocument> arrayList2;
        int i13;
        int size;
        int i14;
        Bitmap bitmap2;
        Object obj10;
        Object obj11;
        String str13;
        int i15;
        boolean z11;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage2;
        String keyForPhotoSize2;
        TLRPC.TL_document tL_document2;
        VideoEditedInfo videoEditedInfo3;
        VideoEditedInfo videoEditedInfo4;
        Object obj12;
        String str14;
        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo;
        Object obj13;
        Bitmap bitmap3;
        Bitmap bitmap4;
        int i16;
        int i17;
        TLRPC.FileLocation fileLocation;
        int i18;
        MediaController.SearchImage searchImage;
        String string;
        String strCopyFileToCache;
        String str15;
        String str16;
        String str17;
        boolean z12;
        Object obj14;
        String str18;
        String string2;
        String str19;
        Object obj15;
        String str20;
        Object obj16;
        String str21;
        Object obj17;
        ArrayList arrayList3;
        int i19;
        AccountInstance accountInstance4;
        String str22;
        Object obj18;
        String str23;
        TLRPC.TL_photo tL_photo;
        String str24;
        final TLRPC.TL_photo tL_photo2;
        String str25;
        int i20;
        TLRPC.TL_photo tL_photo3;
        String str26;
        TLRPC.TL_photo tL_photo4;
        TLRPC.TL_photo tL_photo5;
        ArrayList arrayList4;
        boolean z13;
        int i21;
        long j9;
        ArrayList arrayList5;
        ArrayList arrayList6;
        Uri uri;
        FileOutputStream fileOutputStream;
        InputStream inputStreamOpenInputStream;
        Uri uri2;
        boolean z14;
        long j10;
        int i22;
        final boolean z15;
        int i23;
        int i24;
        File file2;
        TLRPC.TL_document tL_document3;
        String str27;
        Object obj19;
        File file3;
        final TLRPC.TL_document tL_document4;
        String str28;
        int i25;
        Bitmap bitmapCreateVideoThumbnail;
        ?? r72;
        int i26;
        String string3;
        boolean zIsWebp;
        int i27;
        ?? r73;
        boolean z16;
        String string4;
        final AccountInstance accountInstance5;
        SendingMediaInfo sendingMediaInfo2;
        TLRPC.TL_photo tL_photo6;
        String str29;
        String str30;
        TLRPC.TL_photo tL_photo7;
        Object[] sentFile;
        Uri uri3;
        Uri uri4;
        ArrayList arrayList7 = arrayList;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int size2 = arrayList7.size();
        final boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        String str31 = ".gif";
        String str32 = "_";
        ?? r2 = 1;
        if (z || !z2) {
            r7 = 1;
            i4 = 0;
            accountInstance2 = accountInstance;
            map = null;
        } else {
            HashMap map4 = new HashMap();
            int i28 = 0;
            while (i28 < size2) {
                SendingMediaInfo sendingMediaInfo3 = (SendingMediaInfo) arrayList7.get(i28);
                if (sendingMediaInfo3.searchImage == null && !sendingMediaInfo3.isVideo && sendingMediaInfo3.videoEditedInfo == null) {
                    ?? r6 = sendingMediaInfo3.originalPhotoEntry;
                    if (r6 != 0 && sendingMediaInfo3.highQuality) {
                        r6.rebuildPhoto(r2);
                        String str33 = sendingMediaInfo3.originalPhotoEntry.imagePath;
                        if (str33 != null) {
                            sendingMediaInfo3.path = str33;
                        }
                    }
                    String path = sendingMediaInfo3.path;
                    if (path != null || (uri4 = sendingMediaInfo3.uri) == null) {
                        string3 = path;
                    } else {
                        path = AndroidUtilities.getPath(uri4);
                        string3 = sendingMediaInfo3.uri.toString();
                    }
                    if (path == null || sendingMediaInfo3.ttl > 0) {
                        zIsWebp = false;
                    } else {
                        if (path.endsWith(".gif")) {
                            zIsWebp = false;
                        } else {
                            zIsWebp = path.endsWith(".webp");
                            if (zIsWebp) {
                            }
                            if (path != null) {
                                File file4 = new File(path);
                                StringBuilder sb = new StringBuilder();
                                sb.append(string3);
                                r73 = r2;
                                z16 = zIsEncryptedDialog;
                                sb.append(file4.length());
                                sb.append("_");
                                sb.append(file4.lastModified());
                                string4 = sb.toString();
                            } else {
                                r73 = r2;
                                z16 = zIsEncryptedDialog;
                                string4 = null;
                            }
                            if (z16 || sendingMediaInfo3.ttl != 0) {
                                accountInstance5 = accountInstance;
                                i26 = i28;
                                sendingMediaInfo2 = sendingMediaInfo3;
                                zIsEncryptedDialog = z16;
                                tL_photo6 = null;
                                str29 = null;
                            } else {
                                int i29 = sendingMediaInfo3.highQuality ? !z16 ? 6 : 7 : !z16 ? i27 : 3;
                                Object[] sentFile2 = accountInstance.getMessagesStorage().getSentFile(string4, i29);
                                if (sentFile2 != null) {
                                    Object obj20 = sentFile2[i27];
                                    if (obj20 instanceof TLRPC.TL_photo) {
                                        tL_photo7 = (TLRPC.TL_photo) obj20;
                                        str30 = (String) sentFile2[r73];
                                    } else {
                                        str30 = null;
                                        tL_photo7 = null;
                                    }
                                    if (tL_photo7 == null && sendingMediaInfo3.uri != null && (sentFile = accountInstance.getMessagesStorage().getSentFile(AndroidUtilities.getPath(sendingMediaInfo3.uri), i29)) != null) {
                                        Object obj21 = sentFile[i27];
                                        if (obj21 instanceof TLRPC.TL_photo) {
                                            tL_photo7 = (TLRPC.TL_photo) obj21;
                                            str30 = (String) sentFile[r73];
                                        }
                                    }
                                    str29 = str30;
                                    int i30 = i28;
                                    TLRPC.TL_photo tL_photo8 = tL_photo7;
                                    i26 = i30;
                                    sendingMediaInfo2 = sendingMediaInfo3;
                                    zIsEncryptedDialog = z16;
                                    accountInstance5 = accountInstance;
                                    ensureMediaThumbExists(accountInstance5, zIsEncryptedDialog, tL_photo8, sendingMediaInfo3.path, sendingMediaInfo3.uri, 0L, sendingMediaInfo3.highQuality);
                                    tL_photo6 = tL_photo8;
                                }
                            }
                            final MediaSendPrepareWorker mediaSendPrepareWorker = new MediaSendPrepareWorker();
                            final SendingMediaInfo sendingMediaInfo4 = sendingMediaInfo2;
                            map4.put(sendingMediaInfo4, mediaSendPrepareWorker);
                            if (tL_photo6 == null) {
                                mediaSendPrepareWorker.parentObject = str29;
                                mediaSendPrepareWorker.photo = tL_photo6;
                                r72 = 1;
                            } else {
                                r72 = 1;
                                mediaSendPrepareWorker.sync = new CountDownLatch(1);
                                mediaSendThreadPool.execute(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$K6G2JHb3ALn1hW3xHltYwNN_Mls(mediaSendPrepareWorker, accountInstance5, sendingMediaInfo4, zIsEncryptedDialog);
                                    }
                                });
                            }
                        }
                        if (arrayList7.size() > r2 || ((zIsWebp && !shouldSendWebPAsSticker(path, null)) || !TextUtils.isEmpty(sendingMediaInfo3.caption))) {
                            sendingMediaInfo3.forceImage = r2;
                            i27 = 0;
                            if (path != null) {
                            }
                            if (z16) {
                                accountInstance5 = accountInstance;
                                i26 = i28;
                                sendingMediaInfo2 = sendingMediaInfo3;
                                zIsEncryptedDialog = z16;
                                tL_photo6 = null;
                                str29 = null;
                                final MediaSendPrepareWorker mediaSendPrepareWorker2 = new MediaSendPrepareWorker();
                                final SendingMediaInfo sendingMediaInfo42 = sendingMediaInfo2;
                                map4.put(sendingMediaInfo42, mediaSendPrepareWorker2);
                                if (tL_photo6 == null) {
                                }
                            }
                        }
                        r72 = r2;
                        i26 = i28;
                    }
                    i27 = 0;
                    if (!ImageLoader.shouldSendImageAsDocument(sendingMediaInfo3.path, sendingMediaInfo3.uri)) {
                        if (path == null && (uri3 = sendingMediaInfo3.uri) != null && (MediaController.isGif(uri3) || (zIsWebp = MediaController.isWebp(sendingMediaInfo3.uri)))) {
                            if (arrayList7.size() > r2 || ((zIsWebp && !shouldSendWebPAsSticker(null, sendingMediaInfo3.uri)) || !TextUtils.isEmpty(sendingMediaInfo3.caption))) {
                                sendingMediaInfo3.forceImage = r2;
                            }
                        }
                        if (path != null) {
                        }
                        if (z16) {
                        }
                    }
                    r72 = r2;
                    i26 = i28;
                } else {
                    r72 = r2;
                    i26 = i28;
                }
                i28 = i26 + 1;
                r2 = r72;
            }
            r7 = r2;
            i4 = 0;
            accountInstance2 = accountInstance;
            map = map4;
        }
        String str34 = ".webp";
        ArrayList arrayList8 = null;
        ArrayList arrayList9 = null;
        String fileExtension = null;
        ArrayList arrayList10 = null;
        ArrayList arrayList11 = null;
        ArrayList arrayList12 = null;
        int i31 = i4;
        int i32 = i31;
        long j11 = 0;
        long jNextLong = 0;
        ?? r74 = r7;
        while (i32 < size2) {
            final SendingMediaInfo sendingMediaInfo5 = (SendingMediaInfo) arrayList7.get(i32);
            final ?? r21 = i31 == 0 ? r74 : i4;
            if (z2 && size2 > r74 && i31 % 10 == 0) {
                jNextLong = Utilities.random.nextLong();
                i5 = i4;
                j5 = jNextLong;
            } else {
                i5 = i31;
                j5 = j11;
            }
            MediaController.SearchImage searchImage2 = sendingMediaInfo5.searchImage;
            ArrayList arrayList13 = arrayList9;
            int i33 = i32;
            ArrayList arrayList14 = arrayList8;
            int i34 = size2;
            if (searchImage2 != null && sendingMediaInfo5.videoEditedInfo == null) {
                HashMap map5 = map;
                String str35 = str31;
                if (searchImage2.type == 1) {
                    final HashMap map6 = new HashMap();
                    TLRPC.Document document = sendingMediaInfo5.searchImage.document;
                    if (document instanceof TLRPC.TL_document) {
                        tL_document3 = (TLRPC.TL_document) document;
                        file2 = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document3, true);
                    } else {
                        file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.imageUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.imageUrl, "jpg"));
                        tL_document3 = null;
                    }
                    if (tL_document3 == null) {
                        TLRPC.TL_document tL_document5 = new TLRPC.TL_document();
                        str27 = str32;
                        tL_document5.f1668id = 0L;
                        tL_document5.file_reference = new byte[i4];
                        tL_document5.date = accountInstance.getConnectionsManager().getCurrentTime();
                        TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                        tL_documentAttributeFilename.file_name = "animation.gif";
                        tL_document5.attributes.add(tL_documentAttributeFilename);
                        tL_document5.size = sendingMediaInfo5.searchImage.size;
                        tL_document5.dc_id = 0;
                        if (!z && file2.toString().endsWith("mp4")) {
                            tL_document5.mime_type = "video/mp4";
                            tL_document5.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                        } else {
                            tL_document5.mime_type = "image/gif";
                        }
                        if (file2.exists()) {
                            file3 = file2;
                        } else {
                            file2 = null;
                            file3 = null;
                        }
                        if (file2 == null) {
                            file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.thumbUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.thumbUrl, "jpg"));
                            if (!file2.exists()) {
                                file2 = null;
                            }
                        }
                        if (file2 == null) {
                            obj19 = null;
                        } else if (!zIsEncryptedDialog) {
                            try {
                                if (sendingMediaInfo5.ttl != 0) {
                                    i25 = 90;
                                    if (file2.getAbsolutePath().endsWith("mp4")) {
                                        try {
                                            bitmapCreateVideoThumbnail = createVideoThumbnail(file2.getAbsolutePath(), 1);
                                            obj19 = null;
                                        } catch (Exception e) {
                                            e = e;
                                            obj19 = null;
                                            FileLog.m1136e(e);
                                            if (tL_document5.thumbs.isEmpty()) {
                                            }
                                            tL_document4 = tL_document5;
                                            String string5 = sendingMediaInfo5.searchImage.imageUrl;
                                            if (file3 != null) {
                                            }
                                            str28 = sendingMediaInfo5.searchImage.imageUrl;
                                            if (str28 != null) {
                                            }
                                            Object obj22 = obj19;
                                            final String str36 = null;
                                            final String str37 = string5;
                                            z7 = zIsEncryptedDialog;
                                            str3 = str27;
                                            i7 = i33;
                                            str4 = str34;
                                            map2 = map5;
                                            str2 = str35;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda107
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.$r8$lambda$dNXxM6O0p4FJvp1vZi6FX79nd2Y(messageObject, accountInstance, tL_document4, str37, map6, sendingMediaInfo5, str36, j, messageObject2, messageObject3, z3, i, i2, storyItem, replyQuote, str, i3, r21, j2, z4, j3, j4, messageSuggestionParams);
                                                }
                                            });
                                            accountInstance2 = accountInstance;
                                            i31 = i5;
                                            arrayList8 = arrayList14;
                                            j6 = j5;
                                            arrayList9 = arrayList13;
                                            i6 = i34;
                                            obj = obj22;
                                            i32 = i7 + 1;
                                            arrayList7 = arrayList;
                                            zIsEncryptedDialog = z7;
                                            map = map2;
                                            str34 = str4;
                                            str31 = str2;
                                            str32 = str3;
                                            size2 = i6;
                                            j11 = j6;
                                            r74 = 1;
                                            i4 = 0;
                                        }
                                    } else {
                                        String absolutePath2 = file2.getAbsolutePath();
                                        float f = i25;
                                        obj19 = null;
                                        bitmapCreateVideoThumbnail = ImageLoader.loadBitmap(absolutePath2, null, f, f, true);
                                    }
                                    if (bitmapCreateVideoThumbnail != null) {
                                        try {
                                            float f2 = i25;
                                            TLRPC.PhotoSize photoSizeScaleAndSaveImage3 = ImageLoader.scaleAndSaveImage(bitmapCreateVideoThumbnail, f2, f2, i25 > 90 ? 80 : 55, zIsEncryptedDialog);
                                            if (photoSizeScaleAndSaveImage3 != null) {
                                                tL_document5.thumbs.add(photoSizeScaleAndSaveImage3);
                                                tL_document5.flags |= 1;
                                            }
                                            bitmapCreateVideoThumbnail.recycle();
                                        } catch (Exception e2) {
                                            e = e2;
                                            FileLog.m1136e(e);
                                        }
                                    }
                                } else {
                                    i25 = 320;
                                    if (file2.getAbsolutePath().endsWith("mp4")) {
                                    }
                                    if (bitmapCreateVideoThumbnail != null) {
                                    }
                                }
                            } catch (Exception e3) {
                                e = e3;
                                obj19 = null;
                                FileLog.m1136e(e);
                                if (tL_document5.thumbs.isEmpty()) {
                                }
                                tL_document4 = tL_document5;
                                String string52 = sendingMediaInfo5.searchImage.imageUrl;
                                if (file3 != null) {
                                }
                                str28 = sendingMediaInfo5.searchImage.imageUrl;
                                if (str28 != null) {
                                }
                                Object obj222 = obj19;
                                final String str362 = null;
                                final String str372 = string52;
                                z7 = zIsEncryptedDialog;
                                str3 = str27;
                                i7 = i33;
                                str4 = str34;
                                map2 = map5;
                                str2 = str35;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda107
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$dNXxM6O0p4FJvp1vZi6FX79nd2Y(messageObject, accountInstance, tL_document4, str372, map6, sendingMediaInfo5, str362, j, messageObject2, messageObject3, z3, i, i2, storyItem, replyQuote, str, i3, r21, j2, z4, j3, j4, messageSuggestionParams);
                                    }
                                });
                                accountInstance2 = accountInstance;
                                i31 = i5;
                                arrayList8 = arrayList14;
                                j6 = j5;
                                arrayList9 = arrayList13;
                                i6 = i34;
                                obj = obj222;
                                i32 = i7 + 1;
                                arrayList7 = arrayList;
                                zIsEncryptedDialog = z7;
                                map = map2;
                                str34 = str4;
                                str31 = str2;
                                str32 = str3;
                                size2 = i6;
                                j11 = j6;
                                r74 = 1;
                                i4 = 0;
                            }
                        } else {
                            i25 = 90;
                            if (file2.getAbsolutePath().endsWith("mp4")) {
                            }
                            if (bitmapCreateVideoThumbnail != null) {
                            }
                        }
                        if (tL_document5.thumbs.isEmpty()) {
                            TLRPC.TL_photoSize tL_photoSize = new TLRPC.TL_photoSize();
                            MediaController.SearchImage searchImage3 = sendingMediaInfo5.searchImage;
                            tL_photoSize.f1694w = searchImage3.width;
                            tL_photoSize.f1693h = searchImage3.height;
                            tL_photoSize.size = 0;
                            tL_photoSize.location = new TLRPC.TL_fileLocationUnavailable();
                            tL_photoSize.type = "x";
                            tL_document5.thumbs.add(tL_photoSize);
                            tL_document5.flags |= 1;
                        }
                        tL_document4 = tL_document5;
                    } else {
                        str27 = str32;
                        obj19 = null;
                        file3 = file2;
                        tL_document4 = tL_document3;
                    }
                    String string522 = sendingMediaInfo5.searchImage.imageUrl;
                    if (file3 != null) {
                        string522 = file3.toString();
                    }
                    str28 = sendingMediaInfo5.searchImage.imageUrl;
                    if (str28 != null) {
                        map6.put("originalPath", str28);
                    }
                    Object obj2222 = obj19;
                    final String str3622 = null;
                    final String str3722 = string522;
                    z7 = zIsEncryptedDialog;
                    str3 = str27;
                    i7 = i33;
                    str4 = str34;
                    map2 = map5;
                    str2 = str35;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda107
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.$r8$lambda$dNXxM6O0p4FJvp1vZi6FX79nd2Y(messageObject, accountInstance, tL_document4, str3722, map6, sendingMediaInfo5, str3622, j, messageObject2, messageObject3, z3, i, i2, storyItem, replyQuote, str, i3, r21, j2, z4, j3, j4, messageSuggestionParams);
                        }
                    });
                    accountInstance2 = accountInstance;
                    i31 = i5;
                    arrayList8 = arrayList14;
                    j6 = j5;
                    arrayList9 = arrayList13;
                    i6 = i34;
                    obj = obj2222;
                } else {
                    z7 = zIsEncryptedDialog;
                    str3 = str32;
                    str4 = str34;
                    map2 = map5;
                    str2 = str35;
                    TLRPC.Photo photo = searchImage2.photo;
                    TLRPC.TL_photo tL_photo9 = photo instanceof TLRPC.TL_photo ? (TLRPC.TL_photo) photo : null;
                    if (tL_photo9 == null) {
                        File file5 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.imageUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.imageUrl, "jpg"));
                        boolean z17 = !file5.exists() || file5.length() == 0 || (tL_photo9 = accountInstance.getSendMessagesHelper().generatePhotoSizes(file5.toString(), null)) == null;
                        if (tL_photo9 == null) {
                            File file6 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.thumbUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.thumbUrl, "jpg"));
                            if (file6.exists()) {
                                tL_photo9 = accountInstance.getSendMessagesHelper().generatePhotoSizes(file6.toString(), null);
                            }
                            if (tL_photo9 == null) {
                                tL_photo9 = new TLRPC.TL_photo();
                                tL_photo9.date = accountInstance.getConnectionsManager().getCurrentTime();
                                tL_photo9.file_reference = new byte[0];
                                TLRPC.TL_photoSize tL_photoSize2 = new TLRPC.TL_photoSize();
                                MediaController.SearchImage searchImage4 = sendingMediaInfo5.searchImage;
                                tL_photoSize2.f1694w = searchImage4.width;
                                tL_photoSize2.f1693h = searchImage4.height;
                                tL_photoSize2.size = 0;
                                tL_photoSize2.location = new TLRPC.TL_fileLocationUnavailable();
                                tL_photoSize2.type = "x";
                                tL_photo9.sizes.add(tL_photoSize2);
                            }
                        }
                        z14 = z17;
                    } else {
                        z14 = true;
                    }
                    final HashMap map7 = new HashMap();
                    String str38 = sendingMediaInfo5.searchImage.imageUrl;
                    if (str38 != null) {
                        map7.put("originalPath", str38);
                    }
                    if (z2) {
                        int i35 = i5 + 1;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(_UrlKt.FRAGMENT_ENCODE_SET);
                        j10 = j5;
                        sb2.append(j10);
                        map7.put("groupId", sb2.toString());
                        if (i35 != 10) {
                            i22 = i34;
                            i24 = i33;
                            if (i24 != i22 - 1) {
                                i5 = i35;
                                i23 = i24;
                            }
                            z15 = z14;
                        } else {
                            i22 = i34;
                            i24 = i33;
                        }
                        map7.put("final", "1");
                        i5 = i35;
                        i23 = i24;
                        jNextLong = 0;
                        z15 = z14;
                    } else {
                        j10 = j5;
                        i22 = i34;
                        z15 = z14;
                        i23 = i33;
                    }
                    long j12 = j10;
                    final String str39 = null;
                    j6 = j12;
                    i6 = i22;
                    final TLRPC.TL_photo tL_photo10 = tL_photo9;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda108
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.m4876$r8$lambda$z6iRjBqWMnM2EuLntGed_2pG5o(messageObject, accountInstance, tL_photo10, z15, sendingMediaInfo5, map7, str39, j, messageObject2, messageObject3, z3, i, i2, storyItem, replyQuote, i3, str, j2, z4, j3, j4, messageSuggestionParams);
                        }
                    });
                    accountInstance2 = accountInstance;
                    obj = null;
                    i31 = i5;
                    arrayList9 = arrayList13;
                    i7 = i23;
                    arrayList8 = arrayList14;
                }
            } else {
                z7 = zIsEncryptedDialog;
                map2 = map;
                str2 = str31;
                str3 = str32;
                str4 = str34;
                i6 = i34;
                j6 = j5;
                if (sendingMediaInfo5.isVideo || sendingMediaInfo5.videoEditedInfo != null) {
                    if (z) {
                        videoEditedInfoCreateCompressionSettings = null;
                    } else {
                        videoEditedInfoCreateCompressionSettings = sendingMediaInfo5.videoEditedInfo;
                        if (videoEditedInfoCreateCompressionSettings == null) {
                            videoEditedInfoCreateCompressionSettings = createCompressionSettings(sendingMediaInfo5.path);
                        }
                    }
                    if (!z && (videoEditedInfoCreateCompressionSettings != null || sendingMediaInfo5.path.endsWith("mp4"))) {
                        if (sendingMediaInfo5.path == null && (searchImage = sendingMediaInfo5.searchImage) != null) {
                            if (searchImage.photo instanceof TLRPC.TL_photo) {
                                sendingMediaInfo5.path = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(sendingMediaInfo5.searchImage.photo, true).getAbsolutePath();
                            } else {
                                sendingMediaInfo5.path = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.imageUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.imageUrl, "jpg")).getAbsolutePath();
                            }
                        }
                        String str40 = sendingMediaInfo5.path;
                        File file7 = new File(str40);
                        String str41 = str40 + file7.length() + str3 + file7.lastModified();
                        if (videoEditedInfoCreateCompressionSettings != null) {
                            boolean z18 = videoEditedInfoCreateCompressionSettings.muted;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(str41);
                            sb3.append(videoEditedInfoCreateCompressionSettings.estimatedDuration);
                            sb3.append(str3);
                            sb3.append(videoEditedInfoCreateCompressionSettings.startTime);
                            sb3.append(str3);
                            sb3.append(videoEditedInfoCreateCompressionSettings.endTime);
                            sb3.append(videoEditedInfoCreateCompressionSettings.muted ? "_m" : _UrlKt.FRAGMENT_ENCODE_SET);
                            String string6 = sb3.toString();
                            if (videoEditedInfoCreateCompressionSettings.resultWidth != videoEditedInfoCreateCompressionSettings.originalWidth) {
                                string6 = string6 + str3 + videoEditedInfoCreateCompressionSettings.resultWidth;
                            }
                            str5 = "video/mp4";
                            str3 = str3;
                            long j13 = videoEditedInfoCreateCompressionSettings.startTime;
                            if (j13 < 0) {
                                j13 = 0;
                            }
                            long j14 = j13;
                            str6 = string6;
                            str7 = "mp4";
                            j7 = j14;
                            z8 = z18;
                        } else {
                            str5 = "video/mp4";
                            str3 = str3;
                            str6 = str41;
                            str7 = "mp4";
                            j7 = 0;
                            z8 = false;
                        }
                        if (!z7 && sendingMediaInfo5.ttl == 0 && (videoEditedInfoCreateCompressionSettings == null || (videoEditedInfoCreateCompressionSettings.filterState == null && videoEditedInfoCreateCompressionSettings.paintPath == null && videoEditedInfoCreateCompressionSettings.mediaEntities == null && videoEditedInfoCreateCompressionSettings.cropState == null))) {
                            MessagesStorage messagesStorage = accountInstance.getMessagesStorage();
                            if (z7) {
                                z9 = z8;
                                i18 = 5;
                            } else {
                                z9 = z8;
                                i18 = 2;
                            }
                            Object[] sentFile3 = messagesStorage.getSentFile(str6, i18);
                            if (sentFile3 != null) {
                                Object obj23 = sentFile3[0];
                                if (obj23 instanceof TLRPC.TL_document) {
                                    String str42 = (String) sentFile3[1];
                                    obj2 = "groupId";
                                    i8 = i33;
                                    str8 = "-2147483648_";
                                    obj3 = "1";
                                    i9 = i6;
                                    tL_document = (TLRPC.TL_document) obj23;
                                    obj4 = "originalPath";
                                    file = file7;
                                    videoEditedInfo = videoEditedInfoCreateCompressionSettings;
                                    z10 = z7;
                                    str9 = str7;
                                    accountInstance3 = accountInstance;
                                    ensureMediaThumbExists(accountInstance3, z10, tL_document, sendingMediaInfo5.path, null, j7);
                                    str10 = str42;
                                }
                                if (tL_document != null) {
                                    String str43 = sendingMediaInfo5.thumbPath;
                                    Bitmap bitmapDecodeFile = str43 != null ? BitmapFactory.decodeFile(str43) : null;
                                    if (bitmapDecodeFile == null && (bitmapDecodeFile = createVideoThumbnailAtTime(sendingMediaInfo5.path, j7)) == null) {
                                        bitmapDecodeFile = createVideoThumbnail(sendingMediaInfo5.path, 1);
                                    }
                                    if (bitmapDecodeFile != null) {
                                        int iMax = (z10 || sendingMediaInfo5.ttl != 0) ? 90 : Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                        Bitmap.CompressFormat compressFormat = (videoEditedInfo == null || !videoEditedInfo.isSticker) ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.WEBP;
                                        float f3 = iMax;
                                        int i36 = iMax > 90 ? 80 : 55;
                                        sendingMediaInfo = sendingMediaInfo5;
                                        bitmap2 = bitmapDecodeFile;
                                        obj10 = "parentObject";
                                        Bitmap.CompressFormat compressFormat2 = compressFormat;
                                        obj11 = "masks";
                                        String str44 = str5;
                                        str11 = str40;
                                        str13 = str44;
                                        obj6 = obj4;
                                        obj5 = "final";
                                        z11 = z10;
                                        videoEditedInfo2 = videoEditedInfo;
                                        obj7 = obj3;
                                        photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(null, bitmap2, compressFormat2, false, f3, f3, i36, z11, 0, 0, false);
                                        if (photoSizeScaleAndSaveImage2 == null || photoSizeScaleAndSaveImage2.location == null) {
                                            i15 = 0;
                                        } else {
                                            i15 = 0;
                                            keyForPhotoSize2 = getKeyForPhotoSize(accountInstance3, photoSizeScaleAndSaveImage2, null, true, false);
                                            tL_document2 = new TLRPC.TL_document();
                                            tL_document2.file_reference = new byte[i15];
                                            if (photoSizeScaleAndSaveImage2 != null) {
                                                tL_document2.thumbs.add(photoSizeScaleAndSaveImage2);
                                                tL_document2.flags |= 1;
                                            }
                                            videoEditedInfo3 = sendingMediaInfo.videoEditedInfo;
                                            if (videoEditedInfo3 == null && videoEditedInfo3.isSticker) {
                                                tL_document2.mime_type = "video/webm";
                                            } else {
                                                tL_document2.mime_type = str13;
                                            }
                                            accountInstance3.getUserConfig().saveConfig(false);
                                            videoEditedInfo4 = sendingMediaInfo.videoEditedInfo;
                                            if (videoEditedInfo4 == null && videoEditedInfo4.isSticker) {
                                                tL_document2.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                                TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                                                tL_documentAttributeSticker.alt = "👍";
                                                tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                                tL_document2.attributes.add(tL_documentAttributeSticker);
                                                if (photoSizeScaleAndSaveImage2 != null && (fileLocation = photoSizeScaleAndSaveImage2.location) != null) {
                                                    obj12 = obj11;
                                                    str14 = String.format(Locale.US, "%d_%d@b1", Long.valueOf(fileLocation.volume_id), Integer.valueOf(photoSizeScaleAndSaveImage2.location.local_id));
                                                }
                                                if (z11) {
                                                }
                                                tL_document2.attributes.add(tL_documentAttributeVideo);
                                                if (videoEditedInfo2 != null) {
                                                    obj13 = obj10;
                                                    bitmap3 = bitmap2;
                                                    if (file.exists()) {
                                                    }
                                                    fillVideoAttribute(sendingMediaInfo.path, tL_documentAttributeVideo, null);
                                                    tL_document = tL_document2;
                                                    obj8 = obj12;
                                                    obj9 = obj13;
                                                    z7 = z11;
                                                    keyForPhotoSize = str14;
                                                    bitmap = bitmap3;
                                                }
                                            } else {
                                                obj12 = obj11;
                                                str14 = keyForPhotoSize2;
                                                if (z11) {
                                                    tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo_layer159();
                                                } else {
                                                    tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                                                    tL_documentAttributeVideo.supports_streaming = true;
                                                }
                                                tL_document2.attributes.add(tL_documentAttributeVideo);
                                                if (videoEditedInfo2 != null && (videoEditedInfo2.needConvert() || !sendingMediaInfo.isVideo)) {
                                                    if (sendingMediaInfo.isVideo && videoEditedInfo2.muted) {
                                                        fillVideoAttribute(sendingMediaInfo.path, tL_documentAttributeVideo, videoEditedInfo2);
                                                        videoEditedInfo2.originalWidth = tL_documentAttributeVideo.f1671w;
                                                        videoEditedInfo2.originalHeight = tL_documentAttributeVideo.f1670h;
                                                        bitmap4 = bitmap2;
                                                    } else {
                                                        bitmap4 = bitmap2;
                                                        tL_documentAttributeVideo.duration = (int) (videoEditedInfo2.estimatedDuration / 1000);
                                                    }
                                                    int i37 = videoEditedInfo2.rotationValue;
                                                    MediaController.CropState cropState = videoEditedInfo2.cropState;
                                                    if (cropState != null) {
                                                        obj13 = obj10;
                                                        i16 = cropState.transformWidth;
                                                        i17 = cropState.transformHeight;
                                                    } else {
                                                        obj13 = obj10;
                                                        i16 = videoEditedInfo2.resultWidth;
                                                        i17 = videoEditedInfo2.resultHeight;
                                                    }
                                                    bitmap3 = bitmap4;
                                                    if (i37 == 90 || i37 == 270) {
                                                        tL_documentAttributeVideo.f1671w = i17;
                                                        tL_documentAttributeVideo.f1670h = i16;
                                                    } else {
                                                        tL_documentAttributeVideo.f1671w = i16;
                                                        tL_documentAttributeVideo.f1670h = i17;
                                                    }
                                                    tL_document2.size = videoEditedInfo2.estimatedSize;
                                                } else {
                                                    obj13 = obj10;
                                                    bitmap3 = bitmap2;
                                                    if (file.exists()) {
                                                        tL_document2.size = (int) file.length();
                                                    }
                                                    fillVideoAttribute(sendingMediaInfo.path, tL_documentAttributeVideo, null);
                                                }
                                                tL_document = tL_document2;
                                                obj8 = obj12;
                                                obj9 = obj13;
                                                z7 = z11;
                                                keyForPhotoSize = str14;
                                                bitmap = bitmap3;
                                            }
                                        }
                                    } else {
                                        bitmap2 = bitmapDecodeFile;
                                        obj10 = "parentObject";
                                        sendingMediaInfo = sendingMediaInfo5;
                                        obj11 = "masks";
                                        obj5 = "final";
                                        obj6 = obj4;
                                        obj7 = obj3;
                                        str13 = str5;
                                        i15 = 0;
                                        z11 = z10;
                                        videoEditedInfo2 = videoEditedInfo;
                                        str11 = str40;
                                        photoSizeScaleAndSaveImage2 = null;
                                    }
                                    keyForPhotoSize2 = null;
                                    tL_document2 = new TLRPC.TL_document();
                                    tL_document2.file_reference = new byte[i15];
                                    if (photoSizeScaleAndSaveImage2 != null) {
                                    }
                                    videoEditedInfo3 = sendingMediaInfo.videoEditedInfo;
                                    if (videoEditedInfo3 == null) {
                                        tL_document2.mime_type = str13;
                                        accountInstance3.getUserConfig().saveConfig(false);
                                        videoEditedInfo4 = sendingMediaInfo.videoEditedInfo;
                                        if (videoEditedInfo4 == null) {
                                            obj12 = obj11;
                                            str14 = keyForPhotoSize2;
                                            if (z11) {
                                            }
                                            tL_document2.attributes.add(tL_documentAttributeVideo);
                                            if (videoEditedInfo2 != null) {
                                            }
                                        }
                                    }
                                } else {
                                    sendingMediaInfo = sendingMediaInfo5;
                                    str11 = str40;
                                    obj5 = "final";
                                    obj6 = obj4;
                                    obj7 = obj3;
                                    boolean z19 = z10;
                                    videoEditedInfo2 = videoEditedInfo;
                                    if (tL_document.thumbs.isEmpty()) {
                                        obj8 = "masks";
                                        obj9 = "parentObject";
                                        z7 = z19;
                                        bitmap = null;
                                        keyForPhotoSize = null;
                                    } else {
                                        String str45 = sendingMediaInfo.thumbPath;
                                        Bitmap bitmapDecodeFile2 = str45 != null ? BitmapFactory.decodeFile(str45) : null;
                                        if (bitmapDecodeFile2 == null && (bitmapDecodeFile2 = createVideoThumbnailAtTime(sendingMediaInfo.path, j7)) == null) {
                                            bitmapDecodeFile2 = createVideoThumbnail(sendingMediaInfo.path, 1);
                                        }
                                        Bitmap bitmap5 = bitmapDecodeFile2;
                                        if (bitmap5 != null) {
                                            int iMax2 = (z19 || sendingMediaInfo.ttl != 0) ? 90 : Math.max(bitmap5.getWidth(), bitmap5.getHeight());
                                            Bitmap.CompressFormat compressFormat3 = (videoEditedInfo2 == null || !videoEditedInfo2.isSticker) ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.WEBP;
                                            float f4 = iMax2;
                                            int i38 = iMax2 > 90 ? 80 : 55;
                                            obj8 = "masks";
                                            obj9 = "parentObject";
                                            photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(null, bitmap5, compressFormat3, false, f4, f4, i38, z19, 0, 0, false);
                                            z7 = z19;
                                            if (photoSizeScaleAndSaveImage == null || photoSizeScaleAndSaveImage.location == null) {
                                                i10 = 1;
                                                keyForPhotoSize = null;
                                            } else {
                                                i10 = 1;
                                                keyForPhotoSize = getKeyForPhotoSize(accountInstance3, photoSizeScaleAndSaveImage, null, true, false);
                                            }
                                        } else {
                                            obj8 = "masks";
                                            obj9 = "parentObject";
                                            z7 = z19;
                                            i10 = 1;
                                            photoSizeScaleAndSaveImage = null;
                                            keyForPhotoSize = null;
                                        }
                                        if (photoSizeScaleAndSaveImage != null) {
                                            tL_document.thumbs.add(photoSizeScaleAndSaveImage);
                                            tL_document.flags |= i10;
                                        }
                                        bitmap = bitmap5;
                                    }
                                }
                                photoSizeFileToSize = ImageLoader.fileToSize(sendingMediaInfo.coverPath, false);
                                if (photoSizeFileToSize == null && sendingMediaInfo.coverPhoto != null) {
                                    photoSizeFileToSize = new ImageLoader.PhotoSizeFromPhoto(sendingMediaInfo.coverPhoto);
                                }
                                final TLRPC.PhotoSize photoSize = photoSizeFileToSize;
                                if (videoEditedInfo2 != null && videoEditedInfo2.muted) {
                                    size = tL_document.attributes.size();
                                    i14 = 0;
                                    while (true) {
                                        if (i14 >= size) {
                                            if (tL_document.attributes.get(i14) instanceof TLRPC.TL_documentAttributeAnimated) {
                                                break;
                                            } else {
                                                i14++;
                                            }
                                        } else {
                                            tL_document.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                            break;
                                        }
                                    }
                                }
                                if (videoEditedInfo2 != null || (!videoEditedInfo2.needConvert() && sendingMediaInfo.isVideo)) {
                                    absolutePath = str11;
                                } else {
                                    File file8 = new File(FileLoader.getDirectory(4), str8 + SharedConfig.getLastLocalId() + "." + (videoEditedInfo2.isSticker ? "webm" : str9));
                                    SharedConfig.saveConfig();
                                    absolutePath = file8.getAbsolutePath();
                                }
                                map3 = new HashMap();
                                if (str6 != null) {
                                    map3.put(obj6, str6);
                                }
                                if (str10 != null) {
                                    map3.put(obj9, str10);
                                }
                                if (z9 && z2) {
                                    i12 = i5 + 1;
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(_UrlKt.FRAGMENT_ENCODE_SET);
                                    str12 = absolutePath;
                                    j8 = j6;
                                    sb4.append(j8);
                                    map3.put(obj2, sb4.toString());
                                    if (i12 != 10) {
                                        i6 = i9;
                                        i11 = i8;
                                        if (i11 == i6 - 1) {
                                        }
                                    } else {
                                        i6 = i9;
                                        i11 = i8;
                                    }
                                    map3.put(obj5, obj7);
                                    jNextLong = 0;
                                } else {
                                    str12 = absolutePath;
                                    j8 = j6;
                                    i6 = i9;
                                    i11 = i8;
                                    i12 = i5;
                                }
                                if (!z7 && ((videoEditedInfo2 == null || !videoEditedInfo2.isSticker) && (arrayList2 = sendingMediaInfo.masks) != null && !arrayList2.isEmpty())) {
                                    tL_document.attributes.add(new TLRPC.TL_documentAttributeHasStickers());
                                    SerializedData serializedData = new SerializedData((sendingMediaInfo.masks.size() * 20) + 4);
                                    serializedData.writeInt32(sendingMediaInfo.masks.size());
                                    for (i13 = 0; i13 < sendingMediaInfo.masks.size(); i13++) {
                                        sendingMediaInfo.masks.get(i13).serializeToStream(serializedData);
                                    }
                                    map3.put(obj8, Utilities.bytesToHex(serializedData.toByteArray()));
                                    serializedData.cleanup();
                                }
                                final VideoEditedInfo videoEditedInfo5 = videoEditedInfo2;
                                j6 = j8;
                                final String str46 = str12;
                                i7 = i11;
                                final Bitmap bitmap6 = bitmap;
                                obj = null;
                                final TLRPC.TL_document tL_document6 = tL_document;
                                final String str47 = str10;
                                final SendingMediaInfo sendingMediaInfo6 = sendingMediaInfo;
                                final String str48 = keyForPhotoSize;
                                accountInstance2 = accountInstance;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda109
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$o0vDpIbvnG8H320QweOJqToMCPQ(bitmap6, str48, messageObject, accountInstance, videoEditedInfo5, tL_document6, str46, map3, sendingMediaInfo6, str47, j, messageObject2, messageObject3, z3, i, i2, storyItem, replyQuote, str, i3, j2, z4, photoSize, j3, j4, messageSuggestionParams);
                                    }
                                });
                                i5 = i12;
                                arrayList9 = arrayList13;
                                arrayList8 = arrayList14;
                            }
                        } else {
                            z9 = z8;
                        }
                        str9 = str7;
                        obj2 = "groupId";
                        file = file7;
                        i8 = i33;
                        str8 = "-2147483648_";
                        z10 = z7;
                        i9 = i6;
                        accountInstance3 = accountInstance;
                        obj3 = "1";
                        obj4 = "originalPath";
                        videoEditedInfo = videoEditedInfoCreateCompressionSettings;
                        tL_document = null;
                        str10 = null;
                        if (tL_document != null) {
                        }
                        photoSizeFileToSize = ImageLoader.fileToSize(sendingMediaInfo.coverPath, false);
                        if (photoSizeFileToSize == null) {
                            photoSizeFileToSize = new ImageLoader.PhotoSizeFromPhoto(sendingMediaInfo.coverPhoto);
                        }
                        final TLRPC.PhotoSize photoSize2 = photoSizeFileToSize;
                        if (videoEditedInfo2 != null) {
                            size = tL_document.attributes.size();
                            i14 = 0;
                            while (true) {
                                if (i14 >= size) {
                                }
                                i14++;
                            }
                        }
                        if (videoEditedInfo2 != null) {
                            absolutePath = str11;
                            map3 = new HashMap();
                            if (str6 != null) {
                            }
                            if (str10 != null) {
                            }
                            if (z9) {
                                str12 = absolutePath;
                                j8 = j6;
                                i6 = i9;
                                i11 = i8;
                                i12 = i5;
                                if (!z7) {
                                    tL_document.attributes.add(new TLRPC.TL_documentAttributeHasStickers());
                                    SerializedData serializedData2 = new SerializedData((sendingMediaInfo.masks.size() * 20) + 4);
                                    serializedData2.writeInt32(sendingMediaInfo.masks.size());
                                    while (i13 < sendingMediaInfo.masks.size()) {
                                    }
                                    map3.put(obj8, Utilities.bytesToHex(serializedData2.toByteArray()));
                                    serializedData2.cleanup();
                                }
                                final VideoEditedInfo videoEditedInfo52 = videoEditedInfo2;
                                j6 = j8;
                                final String str462 = str12;
                                i7 = i11;
                                final Bitmap bitmap62 = bitmap;
                                obj = null;
                                final TLRPC.TL_document tL_document62 = tL_document;
                                final String str472 = str10;
                                final SendingMediaInfo sendingMediaInfo62 = sendingMediaInfo;
                                final String str482 = keyForPhotoSize;
                                accountInstance2 = accountInstance;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda109
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$o0vDpIbvnG8H320QweOJqToMCPQ(bitmap62, str482, messageObject, accountInstance, videoEditedInfo52, tL_document62, str462, map3, sendingMediaInfo62, str472, j, messageObject2, messageObject3, z3, i, i2, storyItem, replyQuote, str, i3, j2, z4, photoSize2, j3, j4, messageSuggestionParams);
                                    }
                                });
                                i5 = i12;
                                arrayList9 = arrayList13;
                                arrayList8 = arrayList14;
                            }
                        }
                    } else {
                        accountInstance2 = accountInstance;
                        i7 = i33;
                        str3 = str3;
                        j6 = j6;
                        obj = null;
                        if (arrayList14 == null) {
                            arrayList8 = new ArrayList();
                            arrayList9 = new ArrayList();
                            arrayList11 = new ArrayList();
                            arrayList12 = new ArrayList();
                            arrayList10 = new ArrayList();
                        } else {
                            arrayList9 = arrayList13;
                            arrayList8 = arrayList14;
                        }
                        ArrayList arrayList15 = arrayList10;
                        ArrayList arrayList16 = arrayList11;
                        ArrayList arrayList17 = arrayList12;
                        arrayList8.add(sendingMediaInfo5.path);
                        arrayList9.add(sendingMediaInfo5.path);
                        arrayList15.add(sendingMediaInfo5.uri);
                        arrayList16.add(sendingMediaInfo5.caption);
                        arrayList17.add(sendingMediaInfo5.entities);
                        arrayList10 = arrayList15;
                        arrayList11 = arrayList16;
                        arrayList12 = arrayList17;
                    }
                } else {
                    String str49 = sendingMediaInfo5.path;
                    if (str49 != null || (uri2 = sendingMediaInfo5.uri) == null) {
                        string = str49;
                        strCopyFileToCache = string;
                    } else {
                        String path2 = (Build.VERSION.SDK_INT < 30 || !"content".equals(uri2.getScheme())) ? AndroidUtilities.getPath(sendingMediaInfo5.uri) : null;
                        string = sendingMediaInfo5.uri.toString();
                        strCopyFileToCache = path2;
                    }
                    if (inputContentInfoCompat == null || sendingMediaInfo5.uri == null || !inputContentInfoCompat.getDescription().hasMimeType("image/png")) {
                        str15 = str4;
                    } else {
                        try {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(sendingMediaInfo5.uri);
                            try {
                                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("-2147483648_");
                                sb5.append(SharedConfig.getLastLocalId());
                                str15 = str4;
                                try {
                                    sb5.append(str15);
                                    File file9 = new File(FileLoader.getDirectory(4), sb5.toString());
                                    fileOutputStream = new FileOutputStream(file9);
                                    try {
                                        bitmapDecodeStream.compress(Bitmap.CompressFormat.WEBP, 100, fileOutputStream);
                                        SharedConfig.saveConfig();
                                        sendingMediaInfo5.uri = Uri.fromFile(file9);
                                        if (inputStreamOpenInputStream != null) {
                                            try {
                                                inputStreamOpenInputStream.close();
                                            } catch (Exception unused) {
                                            }
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            FileLog.m1136e(th);
                                            if (inputStreamOpenInputStream != null) {
                                                try {
                                                    inputStreamOpenInputStream.close();
                                                } catch (Exception unused2) {
                                                }
                                            }
                                            if (fileOutputStream != null) {
                                            }
                                            if (z) {
                                                str16 = str2;
                                                if (strCopyFileToCache == null) {
                                                }
                                                str17 = strCopyFileToCache;
                                                z12 = true;
                                                if (z12) {
                                                }
                                            }
                                            i32 = i7 + 1;
                                            arrayList7 = arrayList;
                                            zIsEncryptedDialog = z7;
                                            map = map2;
                                            str34 = str4;
                                            str31 = str2;
                                            str32 = str3;
                                            size2 = i6;
                                            j11 = j6;
                                            r74 = 1;
                                            i4 = 0;
                                        } finally {
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileOutputStream = null;
                                    FileLog.m1136e(th);
                                    if (inputStreamOpenInputStream != null) {
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (z) {
                                    }
                                    i32 = i7 + 1;
                                    arrayList7 = arrayList;
                                    zIsEncryptedDialog = z7;
                                    map = map2;
                                    str34 = str4;
                                    str31 = str2;
                                    str32 = str3;
                                    size2 = i6;
                                    j11 = j6;
                                    r74 = 1;
                                    i4 = 0;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                str15 = str4;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            str15 = str4;
                            fileOutputStream = null;
                            inputStreamOpenInputStream = null;
                        }
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    if (z || ImageLoader.shouldSendImageAsDocument(sendingMediaInfo5.path, sendingMediaInfo5.uri)) {
                        str16 = str2;
                        fileExtension = strCopyFileToCache == null ? FileLoader.getFileExtension(new File(strCopyFileToCache)) : _UrlKt.FRAGMENT_ENCODE_SET;
                    } else {
                        if (sendingMediaInfo5.forceImage || strCopyFileToCache == null) {
                            str16 = str2;
                        } else {
                            str16 = str2;
                            if ((strCopyFileToCache.endsWith(str16) || strCopyFileToCache.endsWith(str15)) && sendingMediaInfo5.ttl <= 0) {
                                fileExtension = strCopyFileToCache.endsWith(str16) ? "gif" : "webp";
                            }
                        }
                        if (!sendingMediaInfo5.forceImage && strCopyFileToCache == null && (uri = sendingMediaInfo5.uri) != null) {
                            if (MediaController.isGif(uri)) {
                                string = sendingMediaInfo5.uri.toString();
                                strCopyFileToCache = MediaController.copyFileToCache(sendingMediaInfo5.uri, "gif");
                            } else if (MediaController.isWebp(sendingMediaInfo5.uri)) {
                                string = sendingMediaInfo5.uri.toString();
                                strCopyFileToCache = MediaController.copyFileToCache(sendingMediaInfo5.uri, "webp");
                            }
                        }
                        str17 = strCopyFileToCache;
                        z12 = false;
                        if (z12) {
                            if (arrayList14 == null) {
                                arrayList5 = new ArrayList();
                                arrayList6 = new ArrayList();
                                arrayList11 = new ArrayList();
                                arrayList12 = new ArrayList();
                                arrayList10 = new ArrayList();
                            } else {
                                arrayList5 = arrayList14;
                                arrayList6 = arrayList13;
                            }
                            ArrayList arrayList18 = arrayList10;
                            ArrayList arrayList19 = arrayList11;
                            ArrayList arrayList20 = arrayList12;
                            arrayList5.add(str17);
                            arrayList6.add(string);
                            arrayList18.add(sendingMediaInfo5.uri);
                            arrayList19.add(sendingMediaInfo5.caption);
                            arrayList20.add(sendingMediaInfo5.entities);
                            accountInstance2 = accountInstance;
                            arrayList10 = arrayList18;
                            arrayList11 = arrayList19;
                            arrayList12 = arrayList20;
                            str2 = str16;
                            str4 = str15;
                            i7 = i33;
                            obj = null;
                            arrayList8 = arrayList5;
                            arrayList9 = arrayList6;
                        } else {
                            if (str17 != null) {
                                File file10 = new File(str17);
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append(string);
                                obj14 = "groupId";
                                sb6.append(file10.length());
                                str18 = str3;
                                sb6.append(str18);
                                sb6.append(file10.lastModified());
                                string2 = sb6.toString();
                            } else {
                                obj14 = "groupId";
                                str18 = str3;
                                string2 = null;
                            }
                            if (map2 != null) {
                                MediaSendPrepareWorker mediaSendPrepareWorker3 = (MediaSendPrepareWorker) map2.get(sendingMediaInfo5);
                                TLRPC.TL_photo tL_photo11 = mediaSendPrepareWorker3.photo;
                                String str50 = mediaSendPrepareWorker3.parentObject;
                                if (tL_photo11 == null) {
                                    try {
                                        mediaSendPrepareWorker3.sync.await();
                                    } catch (Exception e4) {
                                        FileLog.m1136e(e4);
                                    }
                                    tL_photo11 = mediaSendPrepareWorker3.photo;
                                    str50 = mediaSendPrepareWorker3.parentObject;
                                }
                                Object obj24 = obj14;
                                str19 = str17;
                                obj15 = obj24;
                                str20 = str18;
                                map2 = map2;
                                obj16 = "1";
                                str2 = str16;
                                str21 = str15;
                                obj17 = "final";
                                arrayList3 = arrayList14;
                                i19 = 1;
                                accountInstance4 = accountInstance;
                                str22 = string2;
                                obj18 = "originalPath";
                                str24 = str50;
                                tL_photo2 = tL_photo11;
                            } else {
                                if (z7 || sendingMediaInfo5.ttl != 0) {
                                    Object obj25 = obj14;
                                    str19 = str17;
                                    obj15 = obj25;
                                    str20 = str18;
                                    map2 = map2;
                                    obj16 = "1";
                                    str2 = str16;
                                    str21 = str15;
                                    obj17 = "final";
                                    arrayList3 = arrayList14;
                                    i19 = 1;
                                    accountInstance4 = accountInstance;
                                    str22 = string2;
                                    obj18 = "originalPath";
                                    str23 = null;
                                    tL_photo = null;
                                } else {
                                    int i39 = sendingMediaInfo5.highQuality ? !z7 ? 6 : 7 : !z7 ? 0 : 3;
                                    Object[] sentFile4 = accountInstance.getMessagesStorage().getSentFile(string2, i39);
                                    if (sentFile4 != null) {
                                        Object obj26 = sentFile4[0];
                                        str25 = str18;
                                        if (obj26 instanceof TLRPC.TL_photo) {
                                            tL_photo3 = (TLRPC.TL_photo) obj26;
                                            i20 = 1;
                                            str26 = (String) sentFile4[1];
                                        }
                                        if (tL_photo3 == null || sendingMediaInfo5.uri == null) {
                                            tL_photo4 = tL_photo3;
                                        } else {
                                            tL_photo4 = tL_photo3;
                                            Object[] sentFile5 = accountInstance.getMessagesStorage().getSentFile(AndroidUtilities.getPath(sendingMediaInfo5.uri), i39);
                                            if (sentFile5 != null) {
                                                Object obj27 = sentFile5[0];
                                                if (obj27 instanceof TLRPC.TL_photo) {
                                                    tL_photo5 = (TLRPC.TL_photo) obj27;
                                                    str23 = (String) sentFile5[i20];
                                                }
                                                obj16 = "1";
                                                Object obj28 = obj14;
                                                str19 = str17;
                                                obj15 = obj28;
                                                map2 = map2;
                                                str2 = str16;
                                                str21 = str15;
                                                obj18 = "originalPath";
                                                arrayList3 = arrayList14;
                                                str20 = str25;
                                                tL_photo = tL_photo5;
                                                str22 = string2;
                                                obj17 = "final";
                                                i19 = i20;
                                                accountInstance4 = accountInstance;
                                                ensureMediaThumbExists(accountInstance4, z7, tL_photo, sendingMediaInfo5.path, sendingMediaInfo5.uri, 0L);
                                            }
                                        }
                                        str23 = str26;
                                        tL_photo5 = tL_photo4;
                                        obj16 = "1";
                                        Object obj282 = obj14;
                                        str19 = str17;
                                        obj15 = obj282;
                                        map2 = map2;
                                        str2 = str16;
                                        str21 = str15;
                                        obj18 = "originalPath";
                                        arrayList3 = arrayList14;
                                        str20 = str25;
                                        tL_photo = tL_photo5;
                                        str22 = string2;
                                        obj17 = "final";
                                        i19 = i20;
                                        accountInstance4 = accountInstance;
                                        ensureMediaThumbExists(accountInstance4, z7, tL_photo, sendingMediaInfo5.path, sendingMediaInfo5.uri, 0L);
                                    } else {
                                        str25 = str18;
                                    }
                                    i20 = 1;
                                    tL_photo3 = null;
                                    str26 = null;
                                    if (tL_photo3 == null) {
                                        tL_photo4 = tL_photo3;
                                        str23 = str26;
                                        tL_photo5 = tL_photo4;
                                        obj16 = "1";
                                        Object obj2822 = obj14;
                                        str19 = str17;
                                        obj15 = obj2822;
                                        map2 = map2;
                                        str2 = str16;
                                        str21 = str15;
                                        obj18 = "originalPath";
                                        arrayList3 = arrayList14;
                                        str20 = str25;
                                        tL_photo = tL_photo5;
                                        str22 = string2;
                                        obj17 = "final";
                                        i19 = i20;
                                        accountInstance4 = accountInstance;
                                        ensureMediaThumbExists(accountInstance4, z7, tL_photo, sendingMediaInfo5.path, sendingMediaInfo5.uri, 0L);
                                    }
                                }
                                if (tL_photo == null) {
                                    TLRPC.TL_photo tL_photoGeneratePhotoSizes = accountInstance4.getSendMessagesHelper().generatePhotoSizes(sendingMediaInfo5.path, sendingMediaInfo5.uri);
                                    if (z7 && sendingMediaInfo5.canDeleteAfter) {
                                        new File(sendingMediaInfo5.path).delete();
                                    }
                                    tL_photo2 = tL_photoGeneratePhotoSizes;
                                    str24 = str23;
                                } else {
                                    str24 = str23;
                                    tL_photo2 = tL_photo;
                                }
                            }
                            if (tL_photo2 != null) {
                                final HashMap map8 = new HashMap();
                                final Bitmap[] bitmapArr = new Bitmap[i19];
                                final String[] strArr = new String[i19];
                                ArrayList<TLRPC.InputDocument> arrayList21 = sendingMediaInfo5.masks;
                                ?? r0 = (arrayList21 == null || arrayList21.isEmpty()) ? 0 : i19;
                                tL_photo2.has_stickers = r0;
                                if (r0 != 0) {
                                    SerializedData serializedData3 = new SerializedData((sendingMediaInfo5.masks.size() * 20) + 4);
                                    serializedData3.writeInt32(sendingMediaInfo5.masks.size());
                                    for (int i40 = 0; i40 < sendingMediaInfo5.masks.size(); i40++) {
                                        sendingMediaInfo5.masks.get(i40).serializeToStream(serializedData3);
                                    }
                                    map8.put("masks", Utilities.bytesToHex(serializedData3.toByteArray()));
                                    serializedData3.cleanup();
                                }
                                if (str22 != null) {
                                    map8.put(obj18, str22);
                                }
                                if (str24 != null) {
                                    map8.put("parentObject", str24);
                                }
                                if (z2) {
                                    try {
                                        z13 = true;
                                        if (arrayList.size() == 1) {
                                        }
                                    } catch (Exception e5) {
                                        e = e5;
                                        z13 = true;
                                        FileLog.m1136e(e);
                                        if (z2) {
                                        }
                                        final boolean z20 = sendingMediaInfo5.highQuality;
                                        i7 = i21;
                                        final String str51 = str24;
                                        str4 = str21;
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda110
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SendMessagesHelper.$r8$lambda$5sAn567e1Erv9hzI8Qtazv3hdcY(bitmapArr, strArr, messageObject, accountInstance, tL_photo2, map8, sendingMediaInfo5, str51, j, messageObject2, messageObject3, z3, i, i2, z5, storyItem, replyQuote, str, i3, j2, z4, j3, j4, messageSuggestionParams, z20);
                                            }
                                        });
                                        accountInstance2 = accountInstance;
                                        arrayList9 = arrayList13;
                                        arrayList8 = arrayList3;
                                        str3 = str20;
                                        j6 = j9;
                                        obj = null;
                                        i32 = i7 + 1;
                                        arrayList7 = arrayList;
                                        zIsEncryptedDialog = z7;
                                        map = map2;
                                        str34 = str4;
                                        str31 = str2;
                                        str32 = str3;
                                        size2 = i6;
                                        j11 = j6;
                                        r74 = 1;
                                        i4 = 0;
                                    }
                                    if (z2) {
                                        i31 = i5 + 1;
                                        StringBuilder sb7 = new StringBuilder();
                                        sb7.append(_UrlKt.FRAGMENT_ENCODE_SET);
                                        j9 = j6;
                                        sb7.append(j9);
                                        map8.put(obj15, sb7.toString());
                                        if (i31 != 10) {
                                            i21 = i33;
                                            if (i21 == i6 - 1) {
                                            }
                                        } else {
                                            i21 = i33;
                                        }
                                        map8.put(obj17, obj16);
                                        jNextLong = 0;
                                    } else {
                                        i21 = i33;
                                        j9 = j6;
                                        i31 = i5;
                                    }
                                    final boolean z202 = sendingMediaInfo5.highQuality;
                                    i7 = i21;
                                    final String str512 = str24;
                                    str4 = str21;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda110
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            SendMessagesHelper.$r8$lambda$5sAn567e1Erv9hzI8Qtazv3hdcY(bitmapArr, strArr, messageObject, accountInstance, tL_photo2, map8, sendingMediaInfo5, str512, j, messageObject2, messageObject3, z3, i, i2, z5, storyItem, replyQuote, str, i3, j2, z4, j3, j4, messageSuggestionParams, z202);
                                        }
                                    });
                                    accountInstance2 = accountInstance;
                                    arrayList9 = arrayList13;
                                    arrayList8 = arrayList3;
                                    str3 = str20;
                                    j6 = j9;
                                    obj = null;
                                } else {
                                    z13 = true;
                                }
                                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_photo2.sizes, AndroidUtilities.getPhotoSize(sendingMediaInfo5.highQuality));
                                if (closestPhotoSizeWithSize != null) {
                                    strArr[0] = getKeyForPhotoSize(accountInstance4, closestPhotoSizeWithSize, bitmapArr, false, false);
                                }
                                if (z2) {
                                }
                                final boolean z2022 = sendingMediaInfo5.highQuality;
                                i7 = i21;
                                final String str5122 = str24;
                                str4 = str21;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda110
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.$r8$lambda$5sAn567e1Erv9hzI8Qtazv3hdcY(bitmapArr, strArr, messageObject, accountInstance, tL_photo2, map8, sendingMediaInfo5, str5122, j, messageObject2, messageObject3, z3, i, i2, z5, storyItem, replyQuote, str, i3, j2, z4, j3, j4, messageSuggestionParams, z2022);
                                    }
                                });
                                accountInstance2 = accountInstance;
                                arrayList9 = arrayList13;
                                arrayList8 = arrayList3;
                                str3 = str20;
                                j6 = j9;
                                obj = null;
                            } else {
                                str4 = str21;
                                i7 = i33;
                                if (arrayList3 == null) {
                                    arrayList4 = new ArrayList();
                                    arrayList9 = new ArrayList();
                                    arrayList11 = new ArrayList();
                                    arrayList12 = new ArrayList();
                                    arrayList10 = new ArrayList();
                                } else {
                                    arrayList9 = arrayList13;
                                    arrayList4 = arrayList3;
                                }
                                ArrayList arrayList22 = arrayList10;
                                ArrayList arrayList23 = arrayList11;
                                ArrayList arrayList24 = arrayList12;
                                arrayList4.add(str19);
                                arrayList9.add(str22);
                                arrayList22.add(sendingMediaInfo5.uri);
                                arrayList23.add(sendingMediaInfo5.caption);
                                arrayList24.add(sendingMediaInfo5.entities);
                                arrayList8 = arrayList4;
                                arrayList10 = arrayList22;
                                arrayList11 = arrayList23;
                                arrayList12 = arrayList24;
                                i31 = i5;
                                str3 = str20;
                                j6 = j6;
                                obj = null;
                                accountInstance2 = accountInstance;
                            }
                        }
                    }
                    str17 = strCopyFileToCache;
                    z12 = true;
                    if (z12) {
                    }
                }
                i31 = i5;
            }
            i32 = i7 + 1;
            arrayList7 = arrayList;
            zIsEncryptedDialog = z7;
            map = map2;
            str34 = str4;
            str31 = str2;
            str32 = str3;
            size2 = i6;
            j11 = j6;
            r74 = 1;
            i4 = 0;
        }
        boolean z21 = zIsEncryptedDialog;
        ArrayList arrayList25 = arrayList8;
        int i41 = size2;
        ArrayList arrayList26 = arrayList9;
        long j15 = jNextLong;
        if (j15 != 0) {
            finishGroup(accountInstance2, j15, i);
        }
        if (inputContentInfoCompat != null) {
            inputContentInfoCompat.releasePermission();
        }
        if (arrayList25 != null && !arrayList25.isEmpty()) {
            int i42 = 1;
            long[] jArr = new long[1];
            int size3 = arrayList25.size();
            int i43 = i31;
            int i44 = 0;
            while (i44 < size3) {
                if (!z || z21 || i41 <= i42 || i43 % 10 != 0) {
                    z6 = false;
                } else {
                    z6 = false;
                    jArr[0] = Utilities.random.nextLong();
                    i43 = 0;
                }
                int i45 = i43 + 1;
                ArrayList arrayList27 = arrayList25;
                ArrayList arrayList28 = arrayList26;
                ArrayList arrayList29 = arrayList10;
                ArrayList arrayList30 = arrayList12;
                ArrayList arrayList31 = arrayList11;
                arrayList25 = arrayList27;
                arrayList26 = arrayList28;
                arrayList10 = arrayList29;
                arrayList12 = arrayList30;
                arrayList11 = arrayList31;
                handleError(prepareSendingDocumentInternal(accountInstance2, (String) arrayList27.get(i44), (String) arrayList28.get(i44), (Uri) arrayList29.get(i44), fileExtension, j, messageObject2, messageObject3, storyItem, replyQuote, (ArrayList) arrayList30.get(i44), messageObject, jArr, (i45 == 10 || i44 == size3 + (-1)) ? true : z6, (CharSequence) arrayList31.get(i44), z3, i, 0, null, z, str, i3, j2, z4, j3, j4, messageSuggestionParams), accountInstance2);
                i44++;
                size3 = size3;
                i43 = i45;
                i42 = 1;
                i41 = i41;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("total send time = " + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    public static /* synthetic */ void $r8$lambda$K6G2JHb3ALn1hW3xHltYwNN_Mls(MediaSendPrepareWorker mediaSendPrepareWorker, AccountInstance accountInstance, SendingMediaInfo sendingMediaInfo, boolean z) {
        mediaSendPrepareWorker.photo = accountInstance.getSendMessagesHelper().generatePhotoSizes(null, sendingMediaInfo.path, sendingMediaInfo.uri, sendingMediaInfo.highQuality);
        if (z && sendingMediaInfo.canDeleteAfter) {
            new File(sendingMediaInfo.path).delete();
        }
        mediaSendPrepareWorker.sync.countDown();
    }

    public static /* synthetic */ void $r8$lambda$dNXxM6O0p4FJvp1vZi6FX79nd2Y(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_document tL_document, String str, HashMap map, SendingMediaInfo sendingMediaInfo, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, int i2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, String str3, int i3, boolean z2, long j2, boolean z3, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tL_document, str, null, map, false, sendingMediaInfo.hasMediaSpoilers, str2);
            return;
        }
        SendMessageParams sendMessageParamsM1181of = SendMessageParams.m1181of(tL_document, null, str, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z, i, i2, 0, str2, null, false, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsM1181of.replyToStoryItem = storyItem;
        sendMessageParamsM1181of.replyQuote = replyQuote;
        sendMessageParamsM1181of.quick_reply_shortcut = str3;
        sendMessageParamsM1181of.quick_reply_shortcut_id = i3;
        if (z2) {
            sendMessageParamsM1181of.effect_id = j2;
        }
        sendMessageParamsM1181of.invert_media = z3;
        sendMessageParamsM1181of.payStars = j3;
        sendMessageParamsM1181of.monoForumPeer = j4;
        sendMessageParamsM1181of.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1181of);
    }

    /* JADX INFO: renamed from: $r8$lambda$z6iRjBqWMn-M2EuLntGed_2pG5o, reason: not valid java name */
    public static /* synthetic */ void m4876$r8$lambda$z6iRjBqWMnM2EuLntGed_2pG5o(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_photo tL_photo, boolean z, SendingMediaInfo sendingMediaInfo, HashMap map, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z2, int i, int i2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, int i3, String str2, long j2, boolean z3, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tL_photo, null, null, z ? sendingMediaInfo.searchImage.imageUrl : null, null, map, false, sendingMediaInfo.hasMediaSpoilers, str);
            return;
        }
        SendMessageParams sendMessageParamsM1186of = SendMessageParams.m1186of(tL_photo, z ? sendingMediaInfo.searchImage.imageUrl : null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z2, i, i2, sendingMediaInfo.ttl, str, false, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsM1186of.replyToStoryItem = storyItem;
        sendMessageParamsM1186of.replyQuote = replyQuote;
        sendMessageParamsM1186of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1186of.quick_reply_shortcut = str2;
        sendMessageParamsM1186of.effect_id = j2;
        sendMessageParamsM1186of.invert_media = z3;
        sendMessageParamsM1186of.payStars = j3;
        sendMessageParamsM1186of.monoForumPeer = j4;
        sendMessageParamsM1186of.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1186of);
    }

    public static /* synthetic */ void $r8$lambda$o0vDpIbvnG8H320QweOJqToMCPQ(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC.TL_document tL_document, String str2, HashMap map, SendingMediaInfo sendingMediaInfo, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, int i2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, String str4, int i3, long j2, boolean z2, TLRPC.PhotoSize photoSize, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tL_document, str2, null, map, false, sendingMediaInfo.hasMediaSpoilers, str3);
            return;
        }
        SendMessageParams sendMessageParamsM1181of = SendMessageParams.m1181of(tL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z, i, i2, sendingMediaInfo.ttl, str3, null, false, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsM1181of.replyToStoryItem = storyItem;
        sendMessageParamsM1181of.replyQuote = replyQuote;
        sendMessageParamsM1181of.quick_reply_shortcut = str4;
        sendMessageParamsM1181of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1181of.effect_id = j2;
        sendMessageParamsM1181of.invert_media = z2;
        sendMessageParamsM1181of.stars = sendingMediaInfo.stars;
        sendMessageParamsM1181of.cover = photoSize;
        sendMessageParamsM1181of.payStars = j3;
        sendMessageParamsM1181of.monoForumPeer = j4;
        sendMessageParamsM1181of.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1181of);
    }

    public static /* synthetic */ void $r8$lambda$5sAn567e1Erv9hzI8Qtazv3hdcY(Bitmap[] bitmapArr, String[] strArr, MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_photo tL_photo, HashMap map, SendingMediaInfo sendingMediaInfo, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, int i2, boolean z2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, String str2, int i3, long j2, boolean z3, long j3, long j4, MessageSuggestionParams messageSuggestionParams, boolean z4) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tL_photo, null, null, null, null, map, false, sendingMediaInfo.hasMediaSpoilers, str);
            return;
        }
        SendMessageParams sendMessageParamsM1186of = SendMessageParams.m1186of(tL_photo, null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z, i, i2, sendingMediaInfo.ttl, str, z2, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsM1186of.replyToStoryItem = storyItem;
        sendMessageParamsM1186of.replyQuote = replyQuote;
        sendMessageParamsM1186of.quick_reply_shortcut = str2;
        sendMessageParamsM1186of.quick_reply_shortcut_id = i3;
        sendMessageParamsM1186of.effect_id = j2;
        sendMessageParamsM1186of.invert_media = z3;
        sendMessageParamsM1186of.stars = sendingMediaInfo.stars;
        sendMessageParamsM1186of.payStars = j3;
        sendMessageParamsM1186of.monoForumPeer = j4;
        sendMessageParamsM1186of.suggestionParams = messageSuggestionParams;
        sendMessageParamsM1186of.sendingHighQuality = z4;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1186of);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(2:54|3)|(8:65|4|(1:6)|11|(1:13)|14|(1:16)|17)|(2:19|(1:21)(4:22|(2:24|(1:26))(0)|53|46))|58|27|53|46|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r6);
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f A[Catch: all -> 0x001d, Exception -> 0x0021, TRY_LEAVE, TryCatch #8 {Exception -> 0x0021, all -> 0x001d, blocks: (B:4:0x000b, B:6:0x0016, B:11:0x0024, B:13:0x002c, B:14:0x0032, B:16:0x003a, B:17:0x0042, B:19:0x004a, B:21:0x0054, B:26:0x005f), top: B:65:0x000b }] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.media.MediaMetadataRetriever] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.media.MediaMetadataRetriever] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v7, types: [double] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void fillVideoAttribute(String str, TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo, VideoEditedInfo videoEditedInfo) {
        MediaMetadataRetriever mediaMetadataRetriever;
        String strExtractMetadata;
        ?? r2;
        ?? r22 = 0;
        ?? duration = 0;
        try {
            try {
                mediaMetadataRetriever = new MediaMetadataRetriever();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            mediaMetadataRetriever.setDataSource(str);
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
            if (strExtractMetadata2 != null) {
                tL_documentAttributeVideo.f1671w = Integer.parseInt(strExtractMetadata2);
            }
            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
            if (strExtractMetadata3 != null) {
                tL_documentAttributeVideo.f1670h = Integer.parseInt(strExtractMetadata3);
            }
            if (mediaMetadataRetriever.extractMetadata(9) != null) {
                tL_documentAttributeVideo.duration = Long.parseLong(r2) / 1000.0d;
            }
            strExtractMetadata = mediaMetadataRetriever.extractMetadata(24);
            r2 = strExtractMetadata;
        } catch (Exception e2) {
            e = e2;
            duration = mediaMetadataRetriever;
            FileLog.m1136e(e);
            if (duration != 0) {
                try {
                    duration.release();
                } catch (Exception e3) {
                    FileLog.m1136e(e3);
                }
            }
            try {
                Context context = ApplicationLoader.applicationContext;
                File file = new File(str);
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(context, Uri.fromFile(file));
                r22 = file;
                if (mediaPlayerCreate != null) {
                    duration = ((double) mediaPlayerCreate.getDuration()) / 1000.0d;
                    tL_documentAttributeVideo.duration = duration;
                    tL_documentAttributeVideo.f1671w = mediaPlayerCreate.getVideoWidth();
                    tL_documentAttributeVideo.f1670h = mediaPlayerCreate.getVideoHeight();
                    mediaPlayerCreate.release();
                    r22 = duration;
                }
            } catch (Exception e4) {
                FileLog.m1136e(e4);
                r22 = duration;
            }
        } catch (Throwable th2) {
            th = th2;
            r22 = mediaMetadataRetriever;
            if (r22 != 0) {
                try {
                    r22.release();
                } catch (Exception e5) {
                    FileLog.m1136e(e5);
                }
            }
            throw th;
        }
        if (strExtractMetadata != null) {
            int iIntValue = Utilities.parseInt((CharSequence) strExtractMetadata).intValue();
            if (videoEditedInfo == null) {
                if (iIntValue != 90) {
                    r2 = iIntValue;
                    if (iIntValue == 270) {
                        int i = tL_documentAttributeVideo.f1671w;
                        int i2 = tL_documentAttributeVideo.f1670h;
                        tL_documentAttributeVideo.f1671w = i2;
                        tL_documentAttributeVideo.f1670h = i;
                        r2 = i2;
                    }
                }
            }
            videoEditedInfo.rotationValue = iIntValue;
            r2 = iIntValue;
        }
        mediaMetadataRetriever.release();
        r22 = r2;
    }

    public static Bitmap createVideoThumbnail(String str, int i) {
        float f = i == 2 ? 1920.0f : i == 3 ? 96.0f : 512.0f;
        Bitmap bitmapCreateVideoThumbnailAtTime = createVideoThumbnailAtTime(str, 0L);
        if (bitmapCreateVideoThumbnailAtTime == null) {
            return bitmapCreateVideoThumbnailAtTime;
        }
        int width = bitmapCreateVideoThumbnailAtTime.getWidth();
        int height = bitmapCreateVideoThumbnailAtTime.getHeight();
        float f2 = width;
        if (f2 <= f && height <= f) {
            return bitmapCreateVideoThumbnailAtTime;
        }
        float fMax = Math.max(width, height) / f;
        return Bitmap.createScaledBitmap(bitmapCreateVideoThumbnailAtTime, (int) (f2 / fMax), (int) (height / fMax), true);
    }

    public static Bitmap createVideoThumbnailAtTime(String str, long j) {
        return createVideoThumbnailAtTime(str, j, null, false);
    }

    public static Bitmap createVideoThumbnailAtTime(String str, long j, int[] iArr, boolean z) {
        if (z) {
            AnimatedFileDrawable animatedFileDrawable = new AnimatedFileDrawable(new File(str), true, 0L, 0, null, null, null, 0L, 0, true, null);
            Bitmap frameAtTime = animatedFileDrawable.getFrameAtTime(j, z);
            if (iArr != null) {
                iArr[0] = animatedFileDrawable.getOrientation();
            }
            animatedFileDrawable.recycle();
            return frameAtTime == null ? createVideoThumbnailAtTime(str, j, iArr, false) : frameAtTime;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        Bitmap frameAtTime2 = null;
        try {
            mediaMetadataRetriever.setDataSource(str);
            frameAtTime2 = mediaMetadataRetriever.getFrameAtTime(j, 1);
            if (frameAtTime2 == null) {
                frameAtTime2 = mediaMetadataRetriever.getFrameAtTime(j, 3);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (Throwable unused2) {
            }
            throw th;
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable unused3) {
        }
        return frameAtTime2;
    }

    private static VideoEditedInfo createCompressionSettings(String str) {
        int[] iArr = new int[11];
        AnimatedFileDrawable.getVideoInfo(str, iArr);
        if (iArr[0] == 0) {
            if (!BuildVars.LOGS_ENABLED) {
                return null;
            }
            FileLog.m1133d("video hasn't avc1 atom");
            return null;
        }
        long length = new File(str).length();
        int videoBitrate = MediaController.getVideoBitrate(str);
        if (videoBitrate == -1) {
            videoBitrate = iArr[3];
        }
        int i = 4;
        float f = iArr[4];
        long j = iArr[5];
        int i2 = iArr[7];
        VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
        videoEditedInfo.startTime = -1L;
        videoEditedInfo.endTime = -1L;
        videoEditedInfo.bitrate = videoBitrate;
        videoEditedInfo.originalPath = str;
        videoEditedInfo.framerate = i2;
        videoEditedInfo.estimatedDuration = (long) Math.ceil(f);
        boolean z = true;
        int i3 = iArr[1];
        videoEditedInfo.originalWidth = i3;
        videoEditedInfo.resultWidth = i3;
        int i4 = iArr[2];
        videoEditedInfo.originalHeight = i4;
        videoEditedInfo.resultHeight = i4;
        videoEditedInfo.rotationValue = iArr[8];
        videoEditedInfo.originalDuration = (long) (f * 1000.0f);
        float fMax = Math.max(i3, i4);
        if (fMax > 3840.0f) {
            i = 7;
        } else if (fMax > 2560.0f) {
            i = 6;
        } else if (fMax > 1920.0f) {
            i = 5;
        } else if (fMax <= 1280.0f) {
            i = fMax > 854.0f ? 3 : fMax > 640.0f ? 2 : 1;
        }
        int iRound = Math.round(DownloadController.getInstance(UserConfig.selectedAccount).getMaxVideoBitrate() / (100.0f / i));
        if (iRound > i) {
            iRound = i;
        }
        if (new File(str).length() < 1048576000) {
            if (iRound != i || Math.max(videoEditedInfo.originalWidth, videoEditedInfo.originalHeight) > 1280) {
                float f2 = iRound != 1 ? iRound != 2 ? iRound != 3 ? iRound != 5 ? iRound != 6 ? 1920.0f : 3840.0f : 2560.0f : 1280.0f : 854.0f : 480.0f;
                int i5 = videoEditedInfo.originalWidth;
                int i6 = videoEditedInfo.originalHeight;
                float f3 = f2 / (i5 > i6 ? i5 : i6);
                videoEditedInfo.resultWidth = Math.round((i5 * f3) / 2.0f) * 2;
                videoEditedInfo.resultHeight = Math.round((videoEditedInfo.originalHeight * f3) / 2.0f) * 2;
            } else {
                z = false;
            }
            videoBitrate = MediaController.makeVideoBitrate(videoEditedInfo.originalHeight, videoEditedInfo.originalWidth, videoBitrate, videoEditedInfo.resultHeight, videoEditedInfo.resultWidth);
        } else {
            z = false;
        }
        if (!z) {
            videoEditedInfo.resultWidth = videoEditedInfo.originalWidth;
            videoEditedInfo.resultHeight = videoEditedInfo.originalHeight;
            videoEditedInfo.bitrate = videoBitrate;
            videoEditedInfo.estimatedSize = length;
        } else {
            videoEditedInfo.bitrate = videoBitrate;
            videoEditedInfo.estimatedSize = (long) (j + (((f / 1000.0f) * MediaController.extractRealEncoderBitrate(videoEditedInfo.resultWidth, videoEditedInfo.resultHeight, videoBitrate, false)) / 8.0f));
        }
        if (videoEditedInfo.estimatedSize == 0) {
            videoEditedInfo.estimatedSize = 1L;
        }
        return videoEditedInfo;
    }

    public static void prepareSendingVideo(AccountInstance accountInstance, String str, VideoEditedInfo videoEditedInfo, String str2, TLRPC.Photo photo, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, int i, MessageObject messageObject3, boolean z, int i2, int i3, boolean z2, boolean z3, CharSequence charSequence, String str3, int i4, long j2, long j3) {
        prepareSendingVideo(accountInstance, str, videoEditedInfo, str2, photo, j, messageObject, messageObject2, storyItem, replyQuote, arrayList, i, messageObject3, z, i2, i3, z2, z3, charSequence, str3, i4, j2, j3, 0L, null);
    }

    public static void prepareSendingVideo(AccountInstance accountInstance, String str, VideoEditedInfo videoEditedInfo, String str2, TLRPC.Photo photo, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, int i, MessageObject messageObject3, boolean z, int i2, int i3, boolean z2, boolean z3, CharSequence charSequence, String str3, int i4, long j2, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        prepareSendingVideo(accountInstance, str, videoEditedInfo, str2, photo, j, messageObject, messageObject2, storyItem, replyQuote, arrayList, i, messageObject3, z, i2, i3, z2, z3, charSequence, str3, i4, j2, j3, j4, messageSuggestionParams, false);
    }

    public static void prepareSendingVideo(final AccountInstance accountInstance, final String str, final VideoEditedInfo videoEditedInfo, final String str2, final TLRPC.Photo photo, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final ArrayList<TLRPC.MessageEntity> arrayList, final int i, final MessageObject messageObject3, final boolean z, final int i2, final int i3, final boolean z2, final boolean z3, final CharSequence charSequence, final String str3, final int i4, final long j2, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams, final boolean z4) {
        if (str == null || str.length() == 0) {
            return;
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                SendMessagesHelper.$r8$lambda$EUIc4dz8bteewcbNTgSnyU67fSA(videoEditedInfo, str, j, i, accountInstance, str2, photo, charSequence, messageObject3, z3, messageObject, messageObject2, arrayList, z, i2, i3, storyItem, replyQuote, i4, str3, j2, j3, j4, messageSuggestionParams, z4, z2);
            }
        }).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x027b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$EUIc4dz8bteewcbNTgSnyU67fSA(VideoEditedInfo videoEditedInfo, String str, final long j, final int i, final AccountInstance accountInstance, String str2, TLRPC.Photo photo, CharSequence charSequence, final MessageObject messageObject, final boolean z, final MessageObject messageObject2, final MessageObject messageObject3, final ArrayList arrayList, final boolean z2, final int i2, final int i3, final TL_stories.StoryItem storyItem, final ChatActivity.ReplyQuote replyQuote, final int i4, final String str3, final long j2, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams, final boolean z3, boolean z4) throws Throwable {
        long j5;
        char c;
        File file;
        TLRPC.TL_document tL_document;
        final String str4;
        String str5;
        TLRPC.TL_document tL_document2;
        final Bitmap bitmap;
        final String str6;
        Bitmap bitmapCreateScaledBitmap;
        String str7;
        String absolutePath;
        boolean z5;
        String str8;
        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo;
        int i5;
        int i6;
        Bitmap bitmapCreateScaledBitmap2;
        String str9;
        long j6;
        VideoEditedInfo videoEditedInfoCreateCompressionSettings = videoEditedInfo != null ? videoEditedInfo : createCompressionSettings(str);
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        boolean z6 = videoEditedInfoCreateCompressionSettings != null && videoEditedInfoCreateCompressionSettings.roundVideo;
        if (videoEditedInfoCreateCompressionSettings != null || str.endsWith("mp4") || z6) {
            File file2 = new File(str);
            String string = str + file2.length() + "_" + file2.lastModified();
            String string2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (videoEditedInfoCreateCompressionSettings != null) {
                if (z6) {
                    j6 = 0;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(string);
                    j6 = 0;
                    sb.append(videoEditedInfoCreateCompressionSettings.estimatedDuration);
                    sb.append("_");
                    sb.append(videoEditedInfoCreateCompressionSettings.startTime);
                    sb.append("_");
                    sb.append(videoEditedInfoCreateCompressionSettings.endTime);
                    sb.append(videoEditedInfoCreateCompressionSettings.muted ? "_m" : _UrlKt.FRAGMENT_ENCODE_SET);
                    string = sb.toString();
                    if (videoEditedInfoCreateCompressionSettings.resultWidth != videoEditedInfoCreateCompressionSettings.originalWidth) {
                        string = string + "_" + videoEditedInfoCreateCompressionSettings.resultWidth;
                    }
                }
                long j7 = videoEditedInfoCreateCompressionSettings.startTime;
                if (j7 < j6) {
                    j7 = j6;
                }
                j5 = j7;
            } else {
                j5 = 0;
            }
            String str10 = string;
            if (!zIsEncryptedDialog && i == 0 && (videoEditedInfoCreateCompressionSettings == null || (videoEditedInfoCreateCompressionSettings.filterState == null && videoEditedInfoCreateCompressionSettings.paintPath == null && videoEditedInfoCreateCompressionSettings.mediaEntities == null && videoEditedInfoCreateCompressionSettings.cropState == null))) {
                Object[] sentFile = accountInstance.getMessagesStorage().getSentFile(str10, !zIsEncryptedDialog ? 2 : 5);
                if (sentFile != null) {
                    Object obj = sentFile[0];
                    if (obj instanceof TLRPC.TL_document) {
                        tL_document = (TLRPC.TL_document) obj;
                        String str11 = (String) sentFile[1];
                        c = 0;
                        ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document, str, null, j5);
                        file = file2;
                        str4 = str11;
                    }
                }
            } else {
                c = 0;
                file = file2;
                tL_document = null;
                str4 = null;
            }
            if (tL_document == null) {
                Bitmap bitmapCreateVideoThumbnail = (videoEditedInfoCreateCompressionSettings == null || !videoEditedInfoCreateCompressionSettings.notReadyYet) ? null : videoEditedInfoCreateCompressionSettings.thumb;
                if (bitmapCreateVideoThumbnail == null) {
                    bitmapCreateVideoThumbnail = createVideoThumbnailAtTime(str, j5);
                }
                if (bitmapCreateVideoThumbnail == null) {
                    bitmapCreateVideoThumbnail = createVideoThumbnail(str, 1);
                }
                int i7 = (zIsEncryptedDialog || i != 0) ? 90 : 320;
                float f = i7;
                TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapCreateVideoThumbnail, f, f, i7 > 90 ? 80 : 55, zIsEncryptedDialog);
                if (bitmapCreateVideoThumbnail == null || photoSizeScaleAndSaveImage == null) {
                    z5 = z6;
                    bitmap = bitmapCreateVideoThumbnail;
                } else if (z6) {
                    if (zIsEncryptedDialog) {
                        bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapCreateVideoThumbnail, 90, 90, true);
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 7, 1, bitmapCreateScaledBitmap2.getWidth(), bitmapCreateScaledBitmap2.getHeight(), bitmapCreateScaledBitmap2.getRowBytes());
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 7, 1, bitmapCreateScaledBitmap2.getWidth(), bitmapCreateScaledBitmap2.getHeight(), bitmapCreateScaledBitmap2.getRowBytes());
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 7, 1, bitmapCreateScaledBitmap2.getWidth(), bitmapCreateScaledBitmap2.getHeight(), bitmapCreateScaledBitmap2.getRowBytes());
                        StringBuilder sb2 = new StringBuilder();
                        z5 = z6;
                        sb2.append(photoSizeScaleAndSaveImage.location.volume_id);
                        sb2.append("_");
                        sb2.append(photoSizeScaleAndSaveImage.location.local_id);
                        sb2.append("@%d_%d_b2");
                        String string3 = sb2.toString();
                        Integer numValueOf = Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density));
                        Integer numValueOf2 = Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density));
                        Object[] objArr = new Object[2];
                        objArr[c] = numValueOf;
                        objArr[1] = numValueOf2;
                        str9 = String.format(string3, objArr);
                    } else {
                        z5 = z6;
                        bitmapCreateScaledBitmap2 = bitmapCreateVideoThumbnail;
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 3, 1, bitmapCreateVideoThumbnail.getWidth(), bitmapCreateVideoThumbnail.getHeight(), bitmapCreateVideoThumbnail.getRowBytes());
                        String str12 = photoSizeScaleAndSaveImage.location.volume_id + "_" + photoSizeScaleAndSaveImage.location.local_id + "@%d_%d_b";
                        Integer numValueOf3 = Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density));
                        Integer numValueOf4 = Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density));
                        Object[] objArr2 = new Object[2];
                        objArr2[c] = numValueOf3;
                        objArr2[1] = numValueOf4;
                        str9 = String.format(str12, objArr2);
                    }
                    str8 = str9;
                    bitmap = bitmapCreateScaledBitmap2;
                    tL_document2 = new TLRPC.TL_document();
                    if (photoSizeScaleAndSaveImage != null) {
                        tL_document2.thumbs.add(photoSizeScaleAndSaveImage);
                        tL_document2.flags |= 1;
                    }
                    int i8 = c;
                    tL_document2.file_reference = new byte[i8];
                    tL_document2.mime_type = "video/mp4";
                    accountInstance.getUserConfig().saveConfig(i8);
                    if (!zIsEncryptedDialog) {
                        if (accountInstance.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                            return;
                        } else {
                            tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo_layer159();
                        }
                    } else {
                        tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                        tL_documentAttributeVideo.supports_streaming = true;
                    }
                    tL_documentAttributeVideo.round_message = z5;
                    tL_document2.attributes.add(tL_documentAttributeVideo);
                    if (videoEditedInfoCreateCompressionSettings == null && videoEditedInfoCreateCompressionSettings.notReadyYet) {
                        tL_documentAttributeVideo.f1671w = videoEditedInfoCreateCompressionSettings.resultWidth;
                        tL_documentAttributeVideo.f1670h = videoEditedInfoCreateCompressionSettings.resultHeight;
                        tL_documentAttributeVideo.duration = videoEditedInfoCreateCompressionSettings.estimatedDuration / 1000.0d;
                        tL_document2.size = videoEditedInfoCreateCompressionSettings.estimatedSize;
                    } else if (videoEditedInfoCreateCompressionSettings == null && videoEditedInfoCreateCompressionSettings.needConvert()) {
                        if (videoEditedInfoCreateCompressionSettings.muted) {
                            tL_document2.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                            fillVideoAttribute(str, tL_documentAttributeVideo, videoEditedInfoCreateCompressionSettings);
                            videoEditedInfoCreateCompressionSettings.originalWidth = tL_documentAttributeVideo.f1671w;
                            videoEditedInfoCreateCompressionSettings.originalHeight = tL_documentAttributeVideo.f1670h;
                        } else {
                            tL_documentAttributeVideo.duration = videoEditedInfoCreateCompressionSettings.estimatedDuration / 1000.0d;
                        }
                        int i9 = videoEditedInfoCreateCompressionSettings.rotationValue;
                        MediaController.CropState cropState = videoEditedInfoCreateCompressionSettings.cropState;
                        if (cropState != null) {
                            i5 = cropState.transformWidth;
                            i6 = cropState.transformHeight;
                            i9 += cropState.transformRotation;
                        } else {
                            i5 = videoEditedInfoCreateCompressionSettings.resultWidth;
                            i6 = videoEditedInfoCreateCompressionSettings.resultHeight;
                        }
                        if (i9 == 90 || i9 == 270) {
                            tL_documentAttributeVideo.f1671w = i6;
                            tL_documentAttributeVideo.f1670h = i5;
                        } else {
                            tL_documentAttributeVideo.f1671w = i5;
                            tL_documentAttributeVideo.f1670h = i6;
                        }
                        tL_document2.size = videoEditedInfoCreateCompressionSettings.estimatedSize;
                    } else {
                        if (file.exists()) {
                            tL_document2.size = (int) file.length();
                        }
                        fillVideoAttribute(str, tL_documentAttributeVideo, null);
                    }
                    str5 = str2;
                    str6 = str8;
                } else {
                    z5 = z6;
                    bitmap = null;
                }
                str8 = null;
                tL_document2 = new TLRPC.TL_document();
                if (photoSizeScaleAndSaveImage != null) {
                }
                int i82 = c;
                tL_document2.file_reference = new byte[i82];
                tL_document2.mime_type = "video/mp4";
                accountInstance.getUserConfig().saveConfig(i82);
                if (!zIsEncryptedDialog) {
                }
                tL_documentAttributeVideo.round_message = z5;
                tL_document2.attributes.add(tL_documentAttributeVideo);
                if (videoEditedInfoCreateCompressionSettings == null) {
                    if (videoEditedInfoCreateCompressionSettings == null) {
                        if (file.exists()) {
                        }
                        fillVideoAttribute(str, tL_documentAttributeVideo, null);
                        str5 = str2;
                        str6 = str8;
                    }
                }
            } else {
                boolean z7 = z6;
                if (tL_document.thumbs.isEmpty()) {
                    Bitmap bitmapCreateVideoThumbnail2 = (videoEditedInfoCreateCompressionSettings == null || !videoEditedInfoCreateCompressionSettings.notReadyYet) ? null : videoEditedInfoCreateCompressionSettings.thumb;
                    if (bitmapCreateVideoThumbnail2 == null) {
                        bitmapCreateVideoThumbnail2 = createVideoThumbnailAtTime(str, j5);
                    }
                    if (bitmapCreateVideoThumbnail2 == null) {
                        bitmapCreateVideoThumbnail2 = createVideoThumbnail(str, 1);
                    }
                    int i10 = (zIsEncryptedDialog || i != 0) ? 90 : 320;
                    float f2 = i10;
                    TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmapCreateVideoThumbnail2, f2, f2, i10 > 90 ? 80 : 55, zIsEncryptedDialog);
                    if (bitmapCreateVideoThumbnail2 == null || photoSizeScaleAndSaveImage2 == null) {
                        bitmapCreateScaledBitmap = bitmapCreateVideoThumbnail2;
                    } else if (z7) {
                        if (zIsEncryptedDialog) {
                            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateVideoThumbnail2, 90, 90, true);
                            Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                            Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                            Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                            str7 = String.format(photoSizeScaleAndSaveImage2.location.volume_id + "_" + photoSizeScaleAndSaveImage2.location.local_id + "@%d_%d_b2", Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)));
                        } else {
                            bitmapCreateScaledBitmap = bitmapCreateVideoThumbnail2;
                            Utilities.blurBitmap(bitmapCreateScaledBitmap, 3, 1, bitmapCreateVideoThumbnail2.getWidth(), bitmapCreateVideoThumbnail2.getHeight(), bitmapCreateVideoThumbnail2.getRowBytes());
                            str7 = String.format(photoSizeScaleAndSaveImage2.location.volume_id + "_" + photoSizeScaleAndSaveImage2.location.local_id + "@%d_%d_b", Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)));
                        }
                        if (photoSizeScaleAndSaveImage2 != null) {
                            tL_document.thumbs.add(photoSizeScaleAndSaveImage2);
                            tL_document.flags |= 1;
                        }
                        str5 = str2;
                        tL_document2 = tL_document;
                        bitmap = bitmapCreateScaledBitmap;
                        str6 = str7;
                    } else {
                        bitmapCreateScaledBitmap = null;
                    }
                    str7 = null;
                    if (photoSizeScaleAndSaveImage2 != null) {
                    }
                    str5 = str2;
                    tL_document2 = tL_document;
                    bitmap = bitmapCreateScaledBitmap;
                    str6 = str7;
                } else {
                    str5 = str2;
                    tL_document2 = tL_document;
                    bitmap = null;
                    str6 = null;
                }
            }
            TLRPC.PhotoSize photoSizeFileToSize = ImageLoader.fileToSize(str5, false);
            if (photoSizeFileToSize == null && photo != null) {
                photoSizeFileToSize = new ImageLoader.PhotoSizeFromPhoto(photo);
            }
            final TLRPC.PhotoSize photoSize = photoSizeFileToSize;
            if (videoEditedInfoCreateCompressionSettings == null || !videoEditedInfoCreateCompressionSettings.needConvert()) {
                absolutePath = str;
            } else {
                File file3 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".mp4");
                SharedConfig.saveConfig();
                absolutePath = file3.getAbsolutePath();
            }
            final HashMap map = new HashMap();
            if (charSequence != null) {
                string2 = charSequence.toString();
            }
            final String str13 = string2;
            if (str10 != null) {
                map.put("originalPath", str10);
            }
            if (str4 != null) {
                map.put("parentObject", str4);
            }
            final TLRPC.TL_document tL_document3 = tL_document2;
            final VideoEditedInfo videoEditedInfo2 = videoEditedInfoCreateCompressionSettings;
            final String str14 = absolutePath;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.m4860$r8$lambda$avN3pDG4wlcOtBl_mUZI9Kmuek(bitmap, str6, messageObject, accountInstance, videoEditedInfo2, tL_document3, str14, photoSize, map, z, str4, j, messageObject2, messageObject3, str13, arrayList, z2, i2, i3, i, storyItem, replyQuote, i4, str3, j2, j3, j4, messageSuggestionParams, z3);
                }
            });
            return;
        }
        prepareSendingDocumentInternal(accountInstance, str, str, null, null, j, messageObject2, messageObject3, storyItem, replyQuote, arrayList, messageObject, null, false, charSequence, z2, i2, i3, null, z4, str3, i4, 0L, z3, j3, j4, messageSuggestionParams);
    }

    /* JADX INFO: renamed from: $r8$lambda$avN3pDG4wlcO-tBl_mUZI9Kmuek, reason: not valid java name */
    public static /* synthetic */ void m4860$r8$lambda$avN3pDG4wlcOtBl_mUZI9Kmuek(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC.TL_document tL_document, String str2, TLRPC.PhotoSize photoSize, HashMap map, boolean z, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, String str4, ArrayList arrayList, boolean z2, int i, int i2, int i3, TL_stories.StoryItem storyItem, ChatActivity.ReplyQuote replyQuote, int i4, String str5, long j2, long j3, long j4, MessageSuggestionParams messageSuggestionParams, boolean z3) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tL_document, str2, photoSize, map, false, z, str3);
            return;
        }
        SendMessageParams sendMessageParamsM1181of = SendMessageParams.m1181of(tL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, str4, arrayList, null, map, z2, i, i2, i3, str3, null, false, z);
        sendMessageParamsM1181of.replyToStoryItem = storyItem;
        sendMessageParamsM1181of.replyQuote = replyQuote;
        sendMessageParamsM1181of.quick_reply_shortcut_id = i4;
        sendMessageParamsM1181of.quick_reply_shortcut = str5;
        sendMessageParamsM1181of.effect_id = j2;
        sendMessageParamsM1181of.cover = photoSize;
        sendMessageParamsM1181of.payStars = j3;
        sendMessageParamsM1181of.monoForumPeer = j4;
        sendMessageParamsM1181of.suggestionParams = messageSuggestionParams;
        sendMessageParamsM1181of.invert_media = z3;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsM1181of);
    }

    public static class SendMessageParams {
        public String caption;
        public TLRPC.PhotoSize cover;
        public long dice_stake;
        public TLRPC.TL_document document;
        public long effect_id;
        public ArrayList<TLRPC.MessageEntity> entities;
        public TLRPC.TL_game game;
        public boolean hasMediaSpoilers;
        public boolean invert_media;
        public TLRPC.TL_messageMediaInvoice invoice;
        public TLRPC.MessageMedia location;
        public TLRPC.TL_messageMediaWebPage mediaWebPage;
        public String message;
        public long monoForumPeer;
        public boolean notify;
        public HashMap<String, String> params;
        public Object parentObject;
        public String path;
        public long payStars;
        public long peer;
        public TLRPC.TL_photo photo;
        public TLRPC.TL_messageMediaPoll poll;
        public String quick_reply_shortcut;
        public int quick_reply_shortcut_id;
        public TLRPC.ReplyMarkup replyMarkup;
        public ChatActivity.ReplyQuote replyQuote;
        public MessageObject replyToMsg;
        public TL_stories.StoryItem replyToStoryItem;
        public MessageObject replyToTopMsg;
        public MessageObject retryMessageObject;
        public int scheduleDate;
        public int scheduleRepeatPeriod;
        public boolean searchLinks = true;
        public MessageObject.SendAnimationData sendAnimationData;
        public boolean sendingHighQuality;
        public TL_stories.StoryItem sendingStory;
        public long stars;
        public MessageSuggestionParams suggestionParams;
        public TLRPC.TL_messageMediaToDo todo;
        public int ttl;
        public boolean updateStickersOrder;
        public TLRPC.User user;
        public VideoEditedInfo videoEditedInfo;
        public TLRPC.WebPage webPage;

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1174of(String str, long j) {
            return m1176of(str, null, null, null, null, null, null, null, null, null, j, null, null, null, null, true, null, null, null, null, false, 0, 0, 0, null, null, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1178of(MessageObject messageObject) {
            long dialogId = messageObject.getDialogId();
            TLRPC.Message message = messageObject.messageOwner;
            SendMessageParams sendMessageParamsM1176of = m1176of(null, null, null, null, null, null, null, null, null, null, dialogId, message.attachPath, null, null, null, true, messageObject, null, message.reply_markup, message.params, !message.silent, messageObject.scheduled ? message.date : 0, 0, 0, null, null, false);
            TLRPC.Message message2 = messageObject.messageOwner;
            if (message2 != null) {
                TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message2.quick_reply_shortcut;
                if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcut) {
                    sendMessageParamsM1176of.quick_reply_shortcut = ((TLRPC.TL_inputQuickReplyShortcut) inputQuickReplyShortcut).shortcut;
                }
                sendMessageParamsM1176of.quick_reply_shortcut_id = messageObject.getQuickReplyId();
                sendMessageParamsM1176of.payStars = messageObject.messageOwner.paid_message_stars;
            }
            return sendMessageParamsM1176of;
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1187of(TLRPC.User user, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2) {
            return m1176of(null, null, null, null, null, user, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, i2, 0, null, null, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1183of(TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2) {
            return m1176of(null, null, null, null, null, null, null, null, null, tL_messageMediaInvoice, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, i2, 0, null, null, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1180of(TLRPC.TL_document tL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, int i3, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2) {
            return m1176of(null, str2, null, null, videoEditedInfo, null, tL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, i3, obj, sendAnimationData, z2);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1181of(TLRPC.TL_document tL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, int i3, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2, boolean z3) {
            return m1177of(null, str2, null, null, videoEditedInfo, null, tL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, i3, obj, sendAnimationData, z2, z3);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1175of(String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.WebPage webPage, boolean z, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z2, int i, int i2, MessageObject.SendAnimationData sendAnimationData, boolean z3) {
            return m1176of(str, null, null, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, webPage, z, null, arrayList, replyMarkup, map, z2, i, i2, 0, null, sendAnimationData, z3);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1179of(TLRPC.MessageMedia messageMedia, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2) {
            return m1176of(null, null, messageMedia, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, i2, 0, null, null, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1184of(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2) {
            return m1176of(null, null, null, null, null, null, null, null, tL_messageMediaPoll, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, i2, 0, null, null, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1182of(TLRPC.TL_game tL_game, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2) {
            return m1176of(null, null, null, null, null, null, null, tL_game, null, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, i2, 0, null, null, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1186of(TLRPC.TL_photo tL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, int i3, Object obj, boolean z2, boolean z3) {
            return m1177of(null, str2, null, tL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, i3, obj, null, z2, z3);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1185of(TLRPC.TL_photo tL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, int i3, Object obj, boolean z2) {
            return m1176of(null, str2, null, tL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, i3, obj, null, z2);
        }

        /* JADX INFO: renamed from: of */
        private static SendMessageParams m1176of(String str, String str2, TLRPC.MessageMedia messageMedia, TLRPC.TL_photo tL_photo, VideoEditedInfo videoEditedInfo, TLRPC.User user, TLRPC.TL_document tL_document, TLRPC.TL_game tL_game, TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC.WebPage webPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z2, int i, int i2, int i3, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3) {
            return m1177of(str, str2, messageMedia, tL_photo, videoEditedInfo, user, tL_document, tL_game, tL_messageMediaPoll, tL_messageMediaInvoice, j, str3, messageObject, messageObject2, webPage, z, messageObject3, arrayList, replyMarkup, map, z2, i, i2, i3, obj, sendAnimationData, z3, false);
        }

        /* JADX INFO: renamed from: of */
        public static SendMessageParams m1177of(String str, String str2, TLRPC.MessageMedia messageMedia, TLRPC.TL_photo tL_photo, VideoEditedInfo videoEditedInfo, TLRPC.User user, TLRPC.TL_document tL_document, TLRPC.TL_game tL_game, TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC.WebPage webPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z2, int i, int i2, int i3, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3, boolean z4) {
            SendMessageParams sendMessageParams = new SendMessageParams();
            sendMessageParams.message = str;
            sendMessageParams.caption = str2;
            sendMessageParams.location = messageMedia;
            sendMessageParams.photo = tL_photo;
            sendMessageParams.videoEditedInfo = videoEditedInfo;
            sendMessageParams.user = user;
            sendMessageParams.document = tL_document;
            sendMessageParams.game = tL_game;
            sendMessageParams.poll = tL_messageMediaPoll;
            sendMessageParams.invoice = tL_messageMediaInvoice;
            sendMessageParams.peer = j;
            sendMessageParams.path = str3;
            sendMessageParams.replyToMsg = messageObject;
            sendMessageParams.replyToTopMsg = messageObject2;
            sendMessageParams.webPage = webPage;
            sendMessageParams.searchLinks = z;
            sendMessageParams.retryMessageObject = messageObject3;
            sendMessageParams.entities = arrayList;
            sendMessageParams.replyMarkup = replyMarkup;
            sendMessageParams.params = map;
            sendMessageParams.notify = z2;
            sendMessageParams.scheduleDate = i;
            sendMessageParams.scheduleRepeatPeriod = i2;
            sendMessageParams.ttl = i3;
            sendMessageParams.parentObject = obj;
            sendMessageParams.sendAnimationData = sendAnimationData;
            sendMessageParams.updateStickersOrder = z3;
            sendMessageParams.hasMediaSpoilers = z4;
            return sendMessageParams;
        }
    }

    public TLRPC.Message getMessageFromUpdate(TLRPC.Update update) {
        if (update instanceof TLRPC.TL_updateNewMessage) {
            return ((TLRPC.TL_updateNewMessage) update).message;
        }
        if (update instanceof TLRPC.TL_updateNewChannelMessage) {
            return ((TLRPC.TL_updateNewChannelMessage) update).message;
        }
        if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
            return ((TLRPC.TL_updateNewScheduledMessage) update).message;
        }
        if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
            return ((TLRPC.TL_updateQuickReplyMessage) update).message;
        }
        return null;
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendInlineBotResult tL_messages_sendInlineBotResult, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendInlineBotResult.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendInlineBotResult.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendInlineBotResult.flags |= 1;
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendMessage tL_messages_sendMessage, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendMessage.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendMessage.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendMessage.flags |= 1;
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendMedia tL_messages_sendMedia, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendMedia.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendMedia.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendMedia.flags |= 1;
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendMultiMedia.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendMultiMedia.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendMultiMedia.flags |= 1;
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_forwardMessages.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_forwardMessages.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
        }
    }
}
