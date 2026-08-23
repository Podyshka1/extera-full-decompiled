package org.telegram.messenger;

import android.os.SystemClock;
import android.util.Pair;
import com.exteragram.messenger.updater.UpdaterUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.p025ws.RealWebSocket;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_bots;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes.dex */
public class FileRefController extends BaseController {
    private static volatile FileRefController[] Instance = new FileRefController[16];
    private ArrayList<Waiter> favStickersWaiter;
    private long lastCleanupTime;
    private HashMap<String, ArrayList<Requester>> locationRequester;
    private HashMap<TLObject, Object[]> multiMediaCache;
    private HashMap<String, ArrayList<Requester>> parentRequester;
    private ArrayList<Waiter> recentStickersWaiter;
    private HashMap<String, CachedResult> responseCache;
    private ArrayList<Waiter> savedGifsWaiters;
    private ArrayList<Waiter> wallpaperWaiters;

    public static /* synthetic */ void $r8$lambda$EY1qS7VyTjRp4fSjfQEL0VDJDao(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$LN1JdHjG3sV_jPNS2hg2hjBBeKc(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$OHxIU1zft3mLUg2R8BuKCBppUGg(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$zLpXUCCmmkTcmIXKtdR8GqrnykY(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Requester {
        private Object[] args;
        private boolean completed;
        private TLRPC.InputFileLocation location;
        private String locationKey;

        private Requester() {
        }
    }

    private static class CachedResult {
        private long firstQueryTime;
        private TLObject response;

        private CachedResult() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class Waiter {
        private String locationKey;
        private String parentKey;

        public Waiter(String str, String str2) {
            this.locationKey = str;
            this.parentKey = str2;
        }
    }

    public static FileRefController getInstance(int i) {
        FileRefController fileRefController;
        FileRefController fileRefController2 = Instance[i];
        if (fileRefController2 != null) {
            return fileRefController2;
        }
        synchronized (FileRefController.class) {
            try {
                fileRefController = Instance[i];
                if (fileRefController == null) {
                    FileRefController[] fileRefControllerArr = Instance;
                    FileRefController fileRefController3 = new FileRefController(i);
                    fileRefControllerArr[i] = fileRefController3;
                    fileRefController = fileRefController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileRefController;
    }

    public FileRefController(int i) {
        super(i);
        this.locationRequester = new HashMap<>();
        this.parentRequester = new HashMap<>();
        this.responseCache = new HashMap<>();
        this.multiMediaCache = new HashMap<>();
        this.lastCleanupTime = SystemClock.elapsedRealtime();
        this.wallpaperWaiters = new ArrayList<>();
        this.savedGifsWaiters = new ArrayList<>();
        this.recentStickersWaiter = new ArrayList<>();
        this.favStickersWaiter = new ArrayList<>();
    }

    public static String getKeyForParentObject(Object obj) {
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        if (obj instanceof StoriesController.BotPreview) {
            StoriesController.BotPreview botPreview = (StoriesController.BotPreview) obj;
            if (botPreview.list == null) {
                FileLog.m1133d("failed request reference can't find list in botpreview");
                return null;
            }
            TLRPC.MessageMedia messageMedia = botPreview.media;
            if (messageMedia.document != null) {
                return "botstory_doc_" + botPreview.media.document.f1668id;
            }
            if (messageMedia.photo != null) {
                return "botstory_photo_" + botPreview.media.photo.f1692id;
            }
            return "botstory_" + botPreview.f1857id;
        }
        if (obj instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            if (storyItem.dialogId == 0) {
                FileLog.m1133d("failed request reference can't find dialogId");
                return null;
            }
            return "story_" + storyItem.dialogId + "_" + storyItem.f1857id;
        }
        if (obj instanceof TLRPC.TL_help_premiumPromo) {
            return "premium_promo";
        }
        if (obj instanceof TLRPC.TL_availableReaction) {
            return "available_reaction_" + ((TLRPC.TL_availableReaction) obj).reaction;
        }
        if (obj instanceof TL_bots.BotInfo) {
            return "bot_info_" + ((TL_bots.BotInfo) obj).user_id;
        }
        if (obj instanceof TLRPC.TL_attachMenuBot) {
            return "attach_menu_bot_" + ((TLRPC.TL_attachMenuBot) obj).bot_id;
        }
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            long channelId = messageObject.getChannelId();
            if (messageObject.type == 29 && (message = messageObject.messageOwner) != null && (messageFwdHeader = message.fwd_from) != null && (peer = messageFwdHeader.from_id) != null) {
                channelId = DialogObject.getPeerDialogId(peer);
            }
            return "message" + messageObject.getRealId() + "_" + channelId + "_" + messageObject.scheduled + "_" + messageObject.getQuickReplyId();
        }
        if (obj instanceof TLRPC.Message) {
            TLRPC.Message message2 = (TLRPC.Message) obj;
            TLRPC.Peer peer2 = message2.peer_id;
            return "message" + message2.f1686id + "_" + (peer2 != null ? peer2.channel_id : 0L) + "_" + message2.from_scheduled;
        }
        if (obj instanceof TLRPC.WebPage) {
            return "webpage" + ((TLRPC.WebPage) obj).f1834id;
        }
        if (obj instanceof TLRPC.User) {
            return "user" + ((TLRPC.User) obj).f1825id;
        }
        if (obj instanceof TLRPC.Chat) {
            return "chat" + ((TLRPC.Chat) obj).f1660id;
        }
        if (obj instanceof String) {
            return "str" + ((String) obj);
        }
        if (obj instanceof TLRPC.TL_messages_stickerSet) {
            return "set" + ((TLRPC.TL_messages_stickerSet) obj).set.f1696id;
        }
        if (obj instanceof TLRPC.StickerSetCovered) {
            return "set" + ((TLRPC.StickerSetCovered) obj).set.f1696id;
        }
        if (obj instanceof TLRPC.InputStickerSet) {
            return "set" + ((TLRPC.InputStickerSet) obj).f1685id;
        }
        if (obj instanceof TLRPC.TL_wallPaper) {
            return "wallpaper" + ((TLRPC.TL_wallPaper) obj).f1833id;
        }
        if (obj instanceof TLRPC.TL_theme) {
            return "theme" + ((TLRPC.TL_theme) obj).f1808id;
        }
        if (obj == null) {
            return null;
        }
        return _UrlKt.FRAGMENT_ENCODE_SET + obj;
    }

    public Pair<TLRPC.InputFileLocation, String> getLocationAndKey(Object obj, Object... objArr) {
        Object obj2 = objArr[0];
        if (obj2 instanceof TLRPC.TL_messages_sendMultiMedia) {
            return null;
        }
        if ((obj2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && (obj instanceof ArrayList)) {
            return null;
        }
        if (obj2 instanceof StoriesController.BotPreview) {
            StoriesController.BotPreview botPreview = (StoriesController.BotPreview) obj2;
            TLRPC.MessageMedia messageMedia = botPreview.media;
            if (messageMedia.document != null) {
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                tL_inputDocumentFileLocation.f1680id = botPreview.media.document.f1668id;
                return new Pair<>(tL_inputDocumentFileLocation, "botstory_doc_" + botPreview.media.document.f1668id);
            }
            if (messageMedia.photo != null) {
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                tL_inputPhotoFileLocation.f1680id = botPreview.media.photo.f1692id;
                return new Pair<>(tL_inputPhotoFileLocation, "botstory_photo_" + botPreview.media.photo.f1692id);
            }
            return new Pair<>(new TLRPC.TL_inputDocumentFileLocation(), "botstory_" + botPreview.f1857id);
        }
        if (obj2 instanceof TL_stories.TL_storyItem) {
            TL_stories.TL_storyItem tL_storyItem = (TL_stories.TL_storyItem) obj2;
            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation2 = new TLRPC.TL_inputDocumentFileLocation();
            tL_inputDocumentFileLocation2.f1680id = tL_storyItem.media.document.f1668id;
            return new Pair<>(tL_inputDocumentFileLocation2, "story_" + tL_storyItem.f1857id);
        }
        if (obj2 instanceof TLRPC.TL_inputSingleMedia) {
            TLRPC.InputMedia inputMedia = ((TLRPC.TL_inputSingleMedia) obj2).media;
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation3 = new TLRPC.TL_inputDocumentFileLocation();
                tL_inputDocumentFileLocation3.f1680id = tL_inputMediaDocument.f1731id.f1677id;
                return new Pair<>(tL_inputDocumentFileLocation3, "file_" + tL_inputMediaDocument.f1731id.f1677id);
            }
            if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = (TLRPC.TL_inputMediaPhoto) inputMedia;
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation2 = new TLRPC.TL_inputPhotoFileLocation();
                tL_inputPhotoFileLocation2.f1680id = tL_inputMediaPhoto.f1733id.f1684id;
                return new Pair<>(tL_inputPhotoFileLocation2, "photo_" + tL_inputMediaPhoto.f1733id.f1684id);
            }
        } else {
            if (obj2 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) obj2;
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation4 = new TLRPC.TL_inputDocumentFileLocation();
                tL_inputDocumentFileLocation4.f1680id = tL_inputMediaDocument2.f1731id.f1677id;
                return new Pair<>(tL_inputDocumentFileLocation4, "file_" + tL_inputMediaDocument2.f1731id.f1677id);
            }
            if (obj2 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto2 = (TLRPC.TL_inputMediaPhoto) obj2;
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation3 = new TLRPC.TL_inputPhotoFileLocation();
                tL_inputPhotoFileLocation3.f1680id = tL_inputMediaPhoto2.f1733id.f1684id;
                return new Pair<>(tL_inputPhotoFileLocation3, "photo_" + tL_inputMediaPhoto2.f1733id.f1684id);
            }
            if (obj2 instanceof TLRPC.TL_messages_sendMedia) {
                TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_sendMedia) obj2).media;
                if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
                    TLRPC.TL_inputMediaDocument tL_inputMediaDocument3 = (TLRPC.TL_inputMediaDocument) inputMedia2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation5 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation5.f1680id = tL_inputMediaDocument3.f1731id.f1677id;
                    return new Pair<>(tL_inputDocumentFileLocation5, "file_" + tL_inputMediaDocument3.f1731id.f1677id);
                }
                if (inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) {
                    TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto3 = (TLRPC.TL_inputMediaPhoto) inputMedia2;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation4 = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation4.f1680id = tL_inputMediaPhoto3.f1733id.f1684id;
                    return new Pair<>(tL_inputPhotoFileLocation4, "photo_" + tL_inputMediaPhoto3.f1733id.f1684id);
                }
                if (inputMedia2 instanceof TLRPC.TL_inputMediaPaidMedia) {
                    TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia2;
                    if (!(obj instanceof ArrayList) && tL_inputMediaPaidMedia.extended_media.size() == 1) {
                        TLRPC.InputMedia inputMedia3 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(0);
                        if (inputMedia3 instanceof TLRPC.TL_inputMediaDocument) {
                            TLRPC.TL_inputMediaDocument tL_inputMediaDocument4 = (TLRPC.TL_inputMediaDocument) inputMedia3;
                            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation6 = new TLRPC.TL_inputDocumentFileLocation();
                            tL_inputDocumentFileLocation6.f1680id = tL_inputMediaDocument4.f1731id.f1677id;
                            return new Pair<>(tL_inputDocumentFileLocation6, "file_" + tL_inputMediaDocument4.f1731id.f1677id);
                        }
                        if (inputMedia3 instanceof TLRPC.TL_inputMediaPhoto) {
                            TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto4 = (TLRPC.TL_inputMediaPhoto) inputMedia3;
                            TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation5 = new TLRPC.TL_inputPhotoFileLocation();
                            tL_inputPhotoFileLocation5.f1680id = tL_inputMediaPhoto4.f1733id.f1684id;
                            return new Pair<>(tL_inputPhotoFileLocation5, "photo_" + tL_inputMediaPhoto4.f1733id.f1684id);
                        }
                    }
                }
            } else if (obj2 instanceof TLRPC.TL_messages_editMessage) {
                TLRPC.InputMedia inputMedia4 = ((TLRPC.TL_messages_editMessage) obj2).media;
                if (inputMedia4 instanceof TLRPC.TL_inputMediaDocument) {
                    TLRPC.TL_inputMediaDocument tL_inputMediaDocument5 = (TLRPC.TL_inputMediaDocument) inputMedia4;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation7 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation7.f1680id = tL_inputMediaDocument5.f1731id.f1677id;
                    return new Pair<>(tL_inputDocumentFileLocation7, "file_" + tL_inputMediaDocument5.f1731id.f1677id);
                }
                if (inputMedia4 instanceof TLRPC.TL_inputMediaPhoto) {
                    TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto5 = (TLRPC.TL_inputMediaPhoto) inputMedia4;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation6 = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation6.f1680id = tL_inputMediaPhoto5.f1733id.f1684id;
                    return new Pair<>(tL_inputPhotoFileLocation6, "photo_" + tL_inputMediaPhoto5.f1733id.f1684id);
                }
            } else {
                if (obj2 instanceof TLRPC.TL_messages_saveGif) {
                    TLRPC.TL_messages_saveGif tL_messages_saveGif = (TLRPC.TL_messages_saveGif) obj2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation8 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation8.f1680id = tL_messages_saveGif.f1774id.f1677id;
                    return new Pair<>(tL_inputDocumentFileLocation8, "file_" + tL_messages_saveGif.f1774id.f1677id);
                }
                if (obj2 instanceof TLRPC.TL_messages_saveRecentSticker) {
                    TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = (TLRPC.TL_messages_saveRecentSticker) obj2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation9 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation9.f1680id = tL_messages_saveRecentSticker.f1775id.f1677id;
                    return new Pair<>(tL_inputDocumentFileLocation9, "file_" + tL_messages_saveRecentSticker.f1775id.f1677id);
                }
                if (obj2 instanceof TLRPC.TL_stickers_addStickerToSet) {
                    TLRPC.TL_stickers_addStickerToSet tL_stickers_addStickerToSet = (TLRPC.TL_stickers_addStickerToSet) obj2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation10 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation10.f1680id = tL_stickers_addStickerToSet.sticker.document.f1677id;
                    return new Pair<>(tL_inputDocumentFileLocation10, "file_" + tL_stickers_addStickerToSet.sticker.document.f1677id);
                }
                if (obj2 instanceof TLRPC.TL_messages_faveSticker) {
                    TLRPC.TL_messages_faveSticker tL_messages_faveSticker = (TLRPC.TL_messages_faveSticker) obj2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation11 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation11.f1680id = tL_messages_faveSticker.f1754id.f1677id;
                    return new Pair<>(tL_inputDocumentFileLocation11, "file_" + tL_messages_faveSticker.f1754id.f1677id);
                }
                if (obj2 instanceof TLRPC.TL_messages_getAttachedStickers) {
                    TLRPC.InputStickeredMedia inputStickeredMedia = ((TLRPC.TL_messages_getAttachedStickers) obj2).media;
                    if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaDocument) {
                        TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = (TLRPC.TL_inputStickeredMediaDocument) inputStickeredMedia;
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation12 = new TLRPC.TL_inputDocumentFileLocation();
                        tL_inputDocumentFileLocation12.f1680id = tL_inputStickeredMediaDocument.f1738id.f1677id;
                        return new Pair<>(tL_inputDocumentFileLocation12, "file_" + tL_inputStickeredMediaDocument.f1738id.f1677id);
                    }
                    if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaPhoto) {
                        TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = (TLRPC.TL_inputStickeredMediaPhoto) inputStickeredMedia;
                        TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation7 = new TLRPC.TL_inputPhotoFileLocation();
                        tL_inputPhotoFileLocation7.f1680id = tL_inputStickeredMediaPhoto.f1739id.f1684id;
                        return new Pair<>(tL_inputPhotoFileLocation7, "photo_" + tL_inputStickeredMediaPhoto.f1739id.f1684id);
                    }
                } else {
                    if (obj2 instanceof TLRPC.TL_inputFileLocation) {
                        TLRPC.TL_inputFileLocation tL_inputFileLocation = (TLRPC.TL_inputFileLocation) obj2;
                        return new Pair<>(tL_inputFileLocation, "loc_" + tL_inputFileLocation.local_id + "_" + tL_inputFileLocation.volume_id);
                    }
                    if (obj2 instanceof TLRPC.TL_inputDocumentFileLocation) {
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation13 = (TLRPC.TL_inputDocumentFileLocation) obj2;
                        return new Pair<>(tL_inputDocumentFileLocation13, "file_" + tL_inputDocumentFileLocation13.f1680id);
                    }
                    if (obj2 instanceof TLRPC.TL_inputPhotoFileLocation) {
                        TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation8 = (TLRPC.TL_inputPhotoFileLocation) obj2;
                        return new Pair<>(tL_inputPhotoFileLocation8, "photo_" + tL_inputPhotoFileLocation8.f1680id);
                    }
                    if (obj2 instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
                        TLRPC.TL_inputPeerPhotoFileLocation tL_inputPeerPhotoFileLocation = (TLRPC.TL_inputPeerPhotoFileLocation) obj2;
                        return new Pair<>(tL_inputPeerPhotoFileLocation, "avatar_" + tL_inputPeerPhotoFileLocation.f1680id);
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void requestReference(Object obj, Object... objArr) {
        String str;
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        Object obj2;
        int i = 0;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("start loading request reference parent " + getObjectString(obj) + " args = " + objArr[0]);
        }
        Object obj3 = objArr[0];
        if (obj3 instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) obj3;
            ArrayList arrayList = (ArrayList) obj;
            this.multiMediaCache.put(tL_messages_sendMultiMedia, objArr);
            int size = tL_messages_sendMultiMedia.multi_media.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj4 = (TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2);
                Object obj5 = arrayList.get(i2);
                if (obj5 != null) {
                    requestReference(obj5, obj4, tL_messages_sendMultiMedia);
                }
            }
        } else if ((obj3 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj3).media instanceof TLRPC.TL_inputMediaPaidMedia) && (obj instanceof ArrayList)) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) obj3;
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) tL_messages_sendMedia.media;
            ArrayList arrayList2 = (ArrayList) obj;
            this.multiMediaCache.put(tL_messages_sendMedia, objArr);
            int size2 = tL_inputMediaPaidMedia.extended_media.size();
            for (int i3 = 0; i3 < size2; i3++) {
                Object obj6 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(i3);
                Object obj7 = arrayList2.get(i3);
                if (obj7 != null) {
                    requestReference(obj7, obj6, tL_messages_sendMedia);
                }
            }
        } else {
            Pair<TLRPC.InputFileLocation, String> locationAndKey = getLocationAndKey(obj, objArr);
            if (locationAndKey == null) {
                sendErrorToObject(objArr, 0);
                return;
            }
            TLRPC.InputFileLocation inputFileLocation = (TLRPC.InputFileLocation) locationAndKey.first;
            String str2 = (String) locationAndKey.second;
            if (obj instanceof MessageObject) {
                MessageObject messageObject = (MessageObject) obj;
                if (messageObject.getRealId() < 0 && (message = messageObject.messageOwner) != null && (messageMedia = message.media) != null && (obj2 = messageMedia.webpage) != null) {
                    obj = obj2;
                }
            }
            String keyForParentObject = getKeyForParentObject(obj);
            if (keyForParentObject == null) {
                sendErrorToObject(objArr, 0);
                return;
            }
            Requester requester = new Requester();
            requester.args = objArr;
            requester.location = inputFileLocation;
            requester.locationKey = str2;
            ArrayList<Requester> arrayList3 = this.locationRequester.get(str2);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList<>();
                this.locationRequester.put(str2, arrayList3);
                i = 1;
            }
            arrayList3.add(requester);
            ArrayList<Requester> arrayList4 = this.parentRequester.get(keyForParentObject);
            if (arrayList4 == null) {
                arrayList4 = new ArrayList<>();
                this.parentRequester.put(keyForParentObject, arrayList4);
                i++;
            }
            arrayList4.add(requester);
            if (i == 2) {
                if (obj instanceof String) {
                    String str3 = (String) obj;
                    str = "wallpaper";
                    if (!"wallpaper".equals(str3)) {
                        str = "gif";
                        if (!str3.startsWith("gif")) {
                            str = "recent";
                            if (!"recent".equals(str3)) {
                                str = "fav";
                                if (!"fav".equals(str3)) {
                                    str = "update";
                                    if (!"update".equals(str3)) {
                                        str = str2;
                                    }
                                }
                            }
                        }
                    }
                }
                cleanupCache();
                CachedResult cachedResponse = getCachedResponse(str);
                if (cachedResponse != null) {
                    if (onRequestComplete(str2, keyForParentObject, cachedResponse.response, null, false, true)) {
                        return;
                    } else {
                        this.responseCache.remove(str2);
                    }
                } else {
                    CachedResult cachedResponse2 = getCachedResponse(keyForParentObject);
                    if (cachedResponse2 != null) {
                        if (onRequestComplete(str2, keyForParentObject, cachedResponse2.response, null, false, true)) {
                            return;
                        } else {
                            this.responseCache.remove(keyForParentObject);
                        }
                    }
                }
                requestReferenceFromServer(obj, str2, keyForParentObject, objArr);
            }
        }
    }

    private String getObjectString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            return "story(dialogId=" + storyItem.dialogId + " id=" + storyItem.f1857id + ")";
        }
        if (!(obj instanceof MessageObject)) {
            if (obj == null) {
                return null;
            }
            return obj.getClass().getSimpleName();
        }
        MessageObject messageObject = (MessageObject) obj;
        return "message(dialogId=" + messageObject.getDialogId() + "messageId" + messageObject.getId() + ")";
    }

    private void broadcastWaitersData(ArrayList<Waiter> arrayList, TLObject tLObject, TLRPC.TL_error tL_error) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Waiter waiter = arrayList.get(i);
            onRequestComplete(waiter.locationKey, waiter.parentKey, tLObject, tL_error, i == size + (-1), false);
            i++;
        }
        arrayList.clear();
    }

    private void requestReferenceFromServer(Object obj, final String str, final String str2, Object[] objArr) {
        if (obj instanceof StoriesController.BotPreview) {
            StoriesController.BotPreview botPreview = (StoriesController.BotPreview) obj;
            StoriesController.BotPreviewsList botPreviewsList = botPreview.list;
            if (botPreviewsList == null) {
                sendErrorToObject(objArr, 0);
                return;
            } else {
                botPreviewsList.requestReference(botPreview, new Utilities.Callback() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda16
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        this.f$0.lambda$requestReferenceFromServer$1(str, str2, (StoriesController.BotPreview) obj2);
                    }
                });
                return;
            }
        }
        if (obj instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
            tL_stories_getStoriesByID.peer = getMessagesController().getInputPeer(storyItem.dialogId);
            tL_stories_getStoriesByID.f1864id.add(Integer.valueOf(storyItem.f1857id));
            getConnectionsManager().sendRequest(tL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda27
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$2(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_help_premiumPromo) {
            getConnectionsManager().sendRequest(new TLRPC.TL_help_getPremiumPromo(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda36
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$3(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_availableReaction) {
            TLRPC.TL_messages_getAvailableReactions tL_messages_getAvailableReactions = new TLRPC.TL_messages_getAvailableReactions();
            tL_messages_getAvailableReactions.hash = 0;
            getConnectionsManager().sendRequest(tL_messages_getAvailableReactions, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda37
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$4(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TL_bots.BotInfo) {
            TLRPC.TL_users_getFullUser tL_users_getFullUser = new TLRPC.TL_users_getFullUser();
            tL_users_getFullUser.f1817id = getMessagesController().getInputUser(((TL_bots.BotInfo) obj).user_id);
            getConnectionsManager().sendRequest(tL_users_getFullUser, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda38
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$5(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_attachMenuBot) {
            TLRPC.TL_messages_getAttachMenuBot tL_messages_getAttachMenuBot = new TLRPC.TL_messages_getAttachMenuBot();
            tL_messages_getAttachMenuBot.bot = getMessagesController().getInputUser(((TLRPC.TL_attachMenuBot) obj).bot_id);
            getConnectionsManager().sendRequest(tL_messages_getAttachMenuBot, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda39
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$6(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            long channelId = messageObject.getChannelId();
            if (messageObject.scheduled) {
                TLRPC.TL_messages_getScheduledMessages tL_messages_getScheduledMessages = new TLRPC.TL_messages_getScheduledMessages();
                tL_messages_getScheduledMessages.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
                tL_messages_getScheduledMessages.f1767id.add(Integer.valueOf(messageObject.getRealId()));
                getConnectionsManager().sendRequest(tL_messages_getScheduledMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda40
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$7(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            if (messageObject.isQuickReply()) {
                TLRPC.TL_messages_getQuickReplyMessages tL_messages_getQuickReplyMessages = new TLRPC.TL_messages_getQuickReplyMessages();
                tL_messages_getQuickReplyMessages.shortcut_id = messageObject.getQuickReplyId();
                tL_messages_getQuickReplyMessages.flags |= 1;
                tL_messages_getQuickReplyMessages.f1766id.add(Integer.valueOf(messageObject.getRealId()));
                getConnectionsManager().sendRequest(tL_messages_getQuickReplyMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda41
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$8(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            if (channelId != 0) {
                TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
                tL_channels_getMessages.channel = getMessagesController().getInputChannel(channelId);
                tL_channels_getMessages.f1706id.add(Integer.valueOf(messageObject.getRealId()));
                getConnectionsManager().sendRequest(tL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda42
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$9(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
            tL_messages_getMessages.f1761id.add(Integer.valueOf(messageObject.getRealId()));
            getConnectionsManager().sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda43
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$10(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_wallPaper) {
            TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) obj;
            TL_account.getWallPaper getwallpaper = new TL_account.getWallPaper();
            TLRPC.TL_inputWallPaper tL_inputWallPaper = new TLRPC.TL_inputWallPaper();
            tL_inputWallPaper.f1741id = tL_wallPaper.f1833id;
            tL_inputWallPaper.access_hash = tL_wallPaper.access_hash;
            getwallpaper.wallpaper = tL_inputWallPaper;
            getConnectionsManager().sendRequest(getwallpaper, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda17
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$11(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_theme) {
            TLRPC.TL_theme tL_theme = (TLRPC.TL_theme) obj;
            TL_account.getTheme gettheme = new TL_account.getTheme();
            TLRPC.TL_inputTheme tL_inputTheme = new TLRPC.TL_inputTheme();
            tL_inputTheme.f1740id = tL_theme.f1808id;
            tL_inputTheme.access_hash = tL_theme.access_hash;
            gettheme.theme = tL_inputTheme;
            gettheme.format = "android";
            getConnectionsManager().sendRequest(gettheme, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda18
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$12(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.WebPage) {
            TLRPC.TL_messages_getWebPage tL_messages_getWebPage = new TLRPC.TL_messages_getWebPage();
            tL_messages_getWebPage.url = ((TLRPC.WebPage) obj).url;
            tL_messages_getWebPage.hash = 0;
            getConnectionsManager().sendRequest(tL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda19
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$13(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.User) {
            TLRPC.TL_users_getUsers tL_users_getUsers = new TLRPC.TL_users_getUsers();
            tL_users_getUsers.f1818id.add(getMessagesController().getInputUser((TLRPC.User) obj));
            getConnectionsManager().sendRequest(tL_users_getUsers, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda20
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$14(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) obj;
            if (chat instanceof TLRPC.TL_chat) {
                TLRPC.TL_messages_getChats tL_messages_getChats = new TLRPC.TL_messages_getChats();
                tL_messages_getChats.f1757id.add(Long.valueOf(chat.f1660id));
                getConnectionsManager().sendRequest(tL_messages_getChats, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda21
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$15(str, str2, tLObject, tL_error);
                    }
                });
                return;
            } else {
                if (chat instanceof TLRPC.TL_channel) {
                    TLRPC.TL_channels_getChannels tL_channels_getChannels = new TLRPC.TL_channels_getChannels();
                    tL_channels_getChannels.f1704id.add(MessagesController.getInputChannel(chat));
                    getConnectionsManager().sendRequest(tL_channels_getChannels, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda22
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$16(str, str2, tLObject, tL_error);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if (obj instanceof String) {
            String str3 = (String) obj;
            if ("wallpaper".equals(str3)) {
                if (this.wallpaperWaiters.isEmpty()) {
                    getConnectionsManager().sendRequest(new TL_account.getWallPapers(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda23
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$17(tLObject, tL_error);
                        }
                    });
                }
                this.wallpaperWaiters.add(new Waiter(str, str2));
                return;
            }
            if (str3.startsWith("gif")) {
                if (this.savedGifsWaiters.isEmpty()) {
                    getConnectionsManager().sendRequest(new TLRPC.TL_messages_getSavedGifs(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda24
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$18(tLObject, tL_error);
                        }
                    });
                }
                this.savedGifsWaiters.add(new Waiter(str, str2));
                return;
            }
            if ("recent".equals(str3)) {
                if (this.recentStickersWaiter.isEmpty()) {
                    getConnectionsManager().sendRequest(new TLRPC.TL_messages_getRecentStickers(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda25
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$19(tLObject, tL_error);
                        }
                    });
                }
                this.recentStickersWaiter.add(new Waiter(str, str2));
                return;
            }
            if ("fav".equals(str3)) {
                if (this.favStickersWaiter.isEmpty()) {
                    getConnectionsManager().sendRequest(new TLRPC.TL_messages_getFavedStickers(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda26
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$20(tLObject, tL_error);
                        }
                    });
                }
                this.favStickersWaiter.add(new Waiter(str, str2));
                return;
            }
            if ("update".equals(str3)) {
                UpdaterUtils.getAppUpdate(new Utilities.Callback2() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda28
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj2, Object obj3) {
                        this.f$0.lambda$requestReferenceFromServer$21(str, str2, (TLRPC.TL_help_appUpdate) obj2, (TLRPC.TL_error) obj3);
                    }
                });
                return;
            }
            if (str3.startsWith("avatar_")) {
                long jLongValue = Utilities.parseLong(str3).longValue();
                if (jLongValue > 0) {
                    TLRPC.TL_photos_getUserPhotos tL_photos_getUserPhotos = new TLRPC.TL_photos_getUserPhotos();
                    tL_photos_getUserPhotos.limit = 80;
                    tL_photos_getUserPhotos.offset = 0;
                    tL_photos_getUserPhotos.max_id = 0L;
                    tL_photos_getUserPhotos.user_id = getMessagesController().getInputUser(jLongValue);
                    getConnectionsManager().sendRequest(tL_photos_getUserPhotos, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda29
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$22(str, str2, tLObject, tL_error);
                        }
                    });
                    return;
                }
                TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterChatPhotos();
                tL_messages_search.limit = 80;
                tL_messages_search.offset_id = 0;
                tL_messages_search.f1776q = _UrlKt.FRAGMENT_ENCODE_SET;
                tL_messages_search.peer = getMessagesController().getInputPeer(jLongValue);
                getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda30
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$23(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            if (str3.startsWith("sent_")) {
                String[] strArrSplit = str3.split("_");
                if (strArrSplit.length >= 3) {
                    long jLongValue2 = Utilities.parseLong(strArrSplit[1]).longValue();
                    if (jLongValue2 != 0) {
                        TLRPC.TL_channels_getMessages tL_channels_getMessages2 = new TLRPC.TL_channels_getMessages();
                        tL_channels_getMessages2.channel = getMessagesController().getInputChannel(jLongValue2);
                        tL_channels_getMessages2.f1706id.add(Utilities.parseInt((CharSequence) strArrSplit[2]));
                        getConnectionsManager().sendRequest(tL_channels_getMessages2, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda31
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$requestReferenceFromServer$24(str, str2, tLObject, tL_error);
                            }
                        });
                        return;
                    }
                    TLRPC.TL_messages_getMessages tL_messages_getMessages2 = new TLRPC.TL_messages_getMessages();
                    tL_messages_getMessages2.f1761id.add(Utilities.parseInt((CharSequence) strArrSplit[2]));
                    getConnectionsManager().sendRequest(tL_messages_getMessages2, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda32
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$25(str, str2, tLObject, tL_error);
                        }
                    });
                    return;
                }
                sendErrorToObject(objArr, 0);
                return;
            }
            sendErrorToObject(objArr, 0);
            return;
        }
        if (obj instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
            TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
            tL_messages_getStickerSet.stickerset = tL_inputStickerSetID;
            TLRPC.StickerSet stickerSet = ((TLRPC.TL_messages_stickerSet) obj).set;
            tL_inputStickerSetID.f1685id = stickerSet.f1696id;
            tL_inputStickerSetID.access_hash = stickerSet.access_hash;
            getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda33
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$26(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.StickerSetCovered) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet2 = new TLRPC.TL_messages_getStickerSet();
            TLRPC.TL_inputStickerSetID tL_inputStickerSetID2 = new TLRPC.TL_inputStickerSetID();
            tL_messages_getStickerSet2.stickerset = tL_inputStickerSetID2;
            TLRPC.StickerSet stickerSet2 = ((TLRPC.StickerSetCovered) obj).set;
            tL_inputStickerSetID2.f1685id = stickerSet2.f1696id;
            tL_inputStickerSetID2.access_hash = stickerSet2.access_hash;
            getConnectionsManager().sendRequest(tL_messages_getStickerSet2, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda34
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$27(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.InputStickerSet) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet3 = new TLRPC.TL_messages_getStickerSet();
            tL_messages_getStickerSet3.stickerset = (TLRPC.InputStickerSet) obj;
            getConnectionsManager().sendRequest(tL_messages_getStickerSet3, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda35
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$28(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        sendErrorToObject(objArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$1(final String str, final String str2, final StoriesController.BotPreview botPreview) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestReferenceFromServer$0(str, str2, botPreview);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$0(String str, String str2, StoriesController.BotPreview botPreview) {
        onRequestComplete(str, str2, botPreview, null, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$2(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$3(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC.TL_help_premiumPromo) {
            getMediaDataController().processLoadedPremiumPromo((TLRPC.TL_help_premiumPromo) tLObject, iCurrentTimeMillis, false);
        }
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$4(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$5(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$6(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$7(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$8(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$9(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$10(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$11(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$12(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$13(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$14(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$15(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$16(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$17(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.wallpaperWaiters, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$18(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.savedGifsWaiters, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$19(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.recentStickersWaiter, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$20(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.favStickersWaiter, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$21(String str, String str2, TLRPC.TL_help_appUpdate tL_help_appUpdate, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tL_help_appUpdate, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$22(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$23(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$24(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$25(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$26(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$27(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$28(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    private boolean isSameReference(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    private boolean onUpdateObjectReference(final Requester requester, byte[] bArr, TLRPC.InputFileLocation inputFileLocation, boolean z) {
        String strBytesToHex;
        Object obj;
        if (BuildVars.DEBUG_VERSION) {
            FileLog.m1133d("fileref updated for " + requester.args[0] + " " + requester.locationKey);
        }
        if (requester.args[0] instanceof TL_stories.TL_storyItem) {
            ((TL_stories.TL_storyItem) requester.args[0]).media.document.file_reference = bArr;
            return true;
        }
        if (requester.args[0] instanceof TLRPC.TL_inputSingleMedia) {
            final TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) requester.args[1];
            final Object[] objArr = this.multiMediaCache.get(tL_messages_sendMultiMedia);
            if (objArr == null) {
                return true;
            }
            TLRPC.TL_inputSingleMedia tL_inputSingleMedia = (TLRPC.TL_inputSingleMedia) requester.args[0];
            TLRPC.InputMedia inputMedia = tL_inputSingleMedia.media;
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                if (z && isSameReference(tL_inputMediaDocument.f1731id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument.f1731id.file_reference = bArr;
            } else if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = (TLRPC.TL_inputMediaPhoto) inputMedia;
                if (z && isSameReference(tL_inputMediaPhoto.f1733id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto.f1733id.file_reference = bArr;
            }
            int iIndexOf = tL_messages_sendMultiMedia.multi_media.indexOf(tL_inputSingleMedia);
            if (iIndexOf < 0) {
                return true;
            }
            ArrayList arrayList = (ArrayList) objArr[3];
            arrayList.set(iIndexOf, null);
            boolean z2 = true;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) != null) {
                    z2 = false;
                }
            }
            if (z2) {
                this.multiMediaCache.remove(tL_messages_sendMultiMedia);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onUpdateObjectReference$29(tL_messages_sendMultiMedia, objArr);
                    }
                });
            }
        } else if (requester.args.length >= 2 && (requester.args[1] instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) requester.args[1]).media instanceof TLRPC.TL_inputMediaPaidMedia) && ((requester.args[0] instanceof TLRPC.TL_inputMediaPhoto) || (requester.args[0] instanceof TLRPC.TL_inputMediaDocument))) {
            final TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) requester.args[1];
            final Object[] objArr2 = this.multiMediaCache.get(tL_messages_sendMedia);
            if (objArr2 == null) {
                return true;
            }
            if (requester.args[0] instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) requester.args[0];
                if (z && isSameReference(tL_inputMediaDocument2.f1731id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument2.f1731id.file_reference = bArr;
                obj = tL_inputMediaDocument2;
            } else if (requester.args[0] instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto2 = (TLRPC.TL_inputMediaPhoto) requester.args[0];
                if (z && isSameReference(tL_inputMediaPhoto2.f1733id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto2.f1733id.file_reference = bArr;
                obj = tL_inputMediaPhoto2;
            } else {
                obj = null;
            }
            int iIndexOf2 = ((TLRPC.TL_inputMediaPaidMedia) tL_messages_sendMedia.media).extended_media.indexOf(obj);
            if (iIndexOf2 < 0) {
                return true;
            }
            ArrayList arrayList2 = (ArrayList) objArr2[3];
            arrayList2.set(iIndexOf2, null);
            boolean z3 = true;
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                if (arrayList2.get(i2) != null) {
                    z3 = false;
                }
            }
            if (z3) {
                this.multiMediaCache.remove(tL_messages_sendMedia);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onUpdateObjectReference$30(tL_messages_sendMedia, objArr2);
                    }
                });
            }
        } else if (requester.args[0] instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_sendMedia) requester.args[0]).media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument3 = (TLRPC.TL_inputMediaDocument) inputMedia2;
                if (z && isSameReference(tL_inputMediaDocument3.f1731id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument3.f1731id.file_reference = bArr;
            } else if (inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto3 = (TLRPC.TL_inputMediaPhoto) inputMedia2;
                if (z && isSameReference(tL_inputMediaPhoto3.f1733id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto3.f1733id.file_reference = bArr;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdateObjectReference$31(requester);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_editMessage) {
            TLRPC.InputMedia inputMedia3 = ((TLRPC.TL_messages_editMessage) requester.args[0]).media;
            if (inputMedia3 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument4 = (TLRPC.TL_inputMediaDocument) inputMedia3;
                if (z && isSameReference(tL_inputMediaDocument4.f1731id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument4.f1731id.file_reference = bArr;
            } else if (inputMedia3 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto4 = (TLRPC.TL_inputMediaPhoto) inputMedia3;
                if (z && isSameReference(tL_inputMediaPhoto4.f1733id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto4.f1733id.file_reference = bArr;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdateObjectReference$32(requester);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_saveGif) {
            TLRPC.TL_messages_saveGif tL_messages_saveGif = (TLRPC.TL_messages_saveGif) requester.args[0];
            if (z && isSameReference(tL_messages_saveGif.f1774id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveGif.f1774id.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_messages_saveGif, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$OHxIU1zft3mLUg2R8BuKCBppUGg(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_saveRecentSticker) {
            TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = (TLRPC.TL_messages_saveRecentSticker) requester.args[0];
            if (z && isSameReference(tL_messages_saveRecentSticker.f1775id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveRecentSticker.f1775id.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_messages_saveRecentSticker, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda13
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$EY1qS7VyTjRp4fSjfQEL0VDJDao(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_stickers_addStickerToSet) {
            TLRPC.TL_stickers_addStickerToSet tL_stickers_addStickerToSet = (TLRPC.TL_stickers_addStickerToSet) requester.args[0];
            if (z && isSameReference(tL_stickers_addStickerToSet.sticker.document.file_reference, bArr)) {
                return false;
            }
            tL_stickers_addStickerToSet.sticker.document.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_stickers_addStickerToSet, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda14
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$LN1JdHjG3sV_jPNS2hg2hjBBeKc(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_faveSticker) {
            TLRPC.TL_messages_faveSticker tL_messages_faveSticker = (TLRPC.TL_messages_faveSticker) requester.args[0];
            if (z && isSameReference(tL_messages_faveSticker.f1754id.file_reference, bArr)) {
                return false;
            }
            tL_messages_faveSticker.f1754id.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_messages_faveSticker, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda15
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$zLpXUCCmmkTcmIXKtdR8GqrnykY(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_getAttachedStickers) {
            TLRPC.TL_messages_getAttachedStickers tL_messages_getAttachedStickers = (TLRPC.TL_messages_getAttachedStickers) requester.args[0];
            TLRPC.InputStickeredMedia inputStickeredMedia = tL_messages_getAttachedStickers.media;
            if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaDocument) {
                TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = (TLRPC.TL_inputStickeredMediaDocument) inputStickeredMedia;
                if (z && isSameReference(tL_inputStickeredMediaDocument.f1738id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaDocument.f1738id.file_reference = bArr;
            } else if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaPhoto) {
                TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = (TLRPC.TL_inputStickeredMediaPhoto) inputStickeredMedia;
                if (z && isSameReference(tL_inputStickeredMediaPhoto.f1739id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaPhoto.f1739id.file_reference = bArr;
            }
            getConnectionsManager().sendRequest(tL_messages_getAttachedStickers, (RequestDelegate) requester.args[1]);
        } else if (requester.args[1] instanceof FileLoadOperation) {
            FileLoadOperation fileLoadOperation = (FileLoadOperation) requester.args[1];
            if (inputFileLocation != null) {
                if (z && isSameReference(fileLoadOperation.location.file_reference, inputFileLocation.file_reference)) {
                    return false;
                }
                strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                fileLoadOperation.location = inputFileLocation;
                if (BuildVars.LOGS_ENABLED) {
                    strBytesToHex = Utilities.bytesToHex(inputFileLocation.file_reference);
                }
            } else {
                if (z && isSameReference(requester.location.file_reference, bArr)) {
                    return false;
                }
                String strBytesToHex2 = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                TLRPC.InputFileLocation inputFileLocation2 = fileLoadOperation.location;
                requester.location.file_reference = bArr;
                inputFileLocation2.file_reference = bArr;
                strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                strBytesToHex = strBytesToHex2;
            }
            fileLoadOperation.requestingReference = false;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("debug_loading: " + fileLoadOperation.getCacheFileFinal().getName() + " " + strBytesToHex + " " + strBytesToHex + " reference updated resume download");
            }
            fileLoadOperation.startDownloadRequest(-1);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$29(TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$52(tL_messages_sendMultiMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$30(TLRPC.TL_messages_sendMedia tL_messages_sendMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$52(tL_messages_sendMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$31(Requester requester) {
        getSendMessagesHelper().lambda$performSendMessageRequest$66((TLObject) requester.args[0], (MessageObject) requester.args[1], (String) requester.args[2], (SendMessagesHelper.DelayedMessage) requester.args[3], ((Boolean) requester.args[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) requester.args[5], null, null, ((Boolean) requester.args[6]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$32(Requester requester) {
        getSendMessagesHelper().lambda$performSendMessageRequest$66((TLObject) requester.args[0], (MessageObject) requester.args[1], (String) requester.args[2], (SendMessagesHelper.DelayedMessage) requester.args[3], ((Boolean) requester.args[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) requester.args[5], null, null, ((Boolean) requester.args[6]).booleanValue());
    }

    private void sendErrorToObject(final Object[] objArr, int i) {
        Object obj = objArr[0];
        if (obj instanceof TLRPC.TL_inputSingleMedia) {
            final TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) objArr[1];
            final Object[] objArr2 = this.multiMediaCache.get(tL_messages_sendMultiMedia);
            if (objArr2 != null) {
                this.multiMediaCache.remove(tL_messages_sendMultiMedia);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$sendErrorToObject$37(tL_messages_sendMultiMedia, objArr2);
                    }
                });
                return;
            }
            return;
        }
        if ((obj instanceof TLRPC.TL_inputMediaDocument) || (obj instanceof TLRPC.TL_inputMediaPhoto)) {
            Object obj2 = objArr[1];
            if (obj2 instanceof TLRPC.TL_messages_sendMedia) {
                final TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) obj2;
                final Object[] objArr3 = this.multiMediaCache.get(tL_messages_sendMedia);
                if (objArr3 != null) {
                    this.multiMediaCache.remove(tL_messages_sendMedia);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendErrorToObject$38(tL_messages_sendMedia, objArr3);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if (((obj instanceof TLRPC.TL_messages_sendMedia) && !(((TLRPC.TL_messages_sendMedia) obj).media instanceof TLRPC.TL_inputMediaPaidMedia)) || (obj instanceof TLRPC.TL_messages_editMessage)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendErrorToObject$39(objArr);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_messages_saveGif) {
            return;
        }
        if (obj instanceof TLRPC.TL_messages_saveRecentSticker) {
            return;
        }
        if (obj instanceof TLRPC.TL_stickers_addStickerToSet) {
            return;
        }
        if (obj instanceof TLRPC.TL_messages_faveSticker) {
            return;
        }
        if (obj instanceof TLRPC.TL_messages_getAttachedStickers) {
            getConnectionsManager().sendRequest((TLRPC.TL_messages_getAttachedStickers) obj, (RequestDelegate) objArr[1]);
            return;
        }
        Object obj3 = objArr[1];
        if (obj3 instanceof FileLoadOperation) {
            FileLoadOperation fileLoadOperation = (FileLoadOperation) obj3;
            fileLoadOperation.requestingReference = false;
            FileLog.m1134e("debug_loading: " + fileLoadOperation.getCacheFileFinal().getName() + " reference can't update: fail operation ");
            fileLoadOperation.onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$37(TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$52(tL_messages_sendMultiMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$38(TLRPC.TL_messages_sendMedia tL_messages_sendMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$52(tL_messages_sendMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$39(Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequest$66((TLObject) objArr[0], (MessageObject) objArr[1], (String) objArr[2], (SendMessagesHelper.DelayedMessage) objArr[3], ((Boolean) objArr[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) objArr[5], null, null, ((Boolean) objArr[6]).booleanValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0416 A[PHI: r4 r5 r6
  0x0416: PHI (r4v74 byte[]) = (r4v58 byte[]), (r4v2 byte[]) binds: [B:240:0x0507, B:194:0x03ea] A[DONT_GENERATE, DONT_INLINE]
  0x0416: PHI (r5v10 boolean[]) = (r5v5 boolean[]), (r5v2 boolean[]) binds: [B:240:0x0507, B:194:0x03ea] A[DONT_GENERATE, DONT_INLINE]
  0x0416: PHI (r6v6 org.telegram.tgnet.TLRPC$InputFileLocation[]) = (r6v4 org.telegram.tgnet.TLRPC$InputFileLocation[]), (r6v3 org.telegram.tgnet.TLRPC$InputFileLocation[]) binds: [B:240:0x0507, B:194:0x03ea] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x08e4  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x08fc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094  */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v46 */
    /* JADX WARN: Type inference failed for: r10v48 */
    /* JADX WARN: Type inference failed for: r10v49 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean onRequestComplete(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error, boolean z, boolean z2) {
        String str3;
        String str4;
        TLRPC.TL_error tL_error2;
        TLObject tLObject2;
        boolean z3;
        ArrayList<Requester> arrayList;
        Requester requester;
        boolean[] zArr;
        boolean z4;
        ArrayList<Requester> arrayList2;
        TLRPC.InputFileLocation inputFileLocation;
        TL_stories.StoryItem storyItem;
        TLRPC.MessageMedia messageMedia;
        TLRPC.MessageMedia messageMedia2;
        TLRPC.Document document;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        int i;
        byte[] bArr;
        boolean[] zArr2;
        long j;
        ?? r10;
        int i2;
        int i3;
        TLRPC.Message message;
        byte[] fileReference;
        TLRPC.Photo photo3;
        int i4;
        TLRPC.MessageMedia messageMedia3;
        TLRPC.MessageMedia messageMedia4;
        TLRPC.Photo photo4;
        ArrayList<Requester> arrayList3;
        TLObject tLObject3;
        final FileRefController fileRefController = this;
        TLObject tLObject4 = tLObject;
        boolean z5 = tLObject4 instanceof TLRPC.TL_help_premiumPromo;
        if (z5) {
            str4 = "premium_promo";
        } else if (tLObject4 instanceof TL_account.TL_wallPapers) {
            str4 = "wallpaper";
        } else if (tLObject4 instanceof TLRPC.TL_messages_savedGifs) {
            str4 = "gif";
        } else if (tLObject4 instanceof TLRPC.TL_messages_recentStickers) {
            str4 = "recent";
        } else if (tLObject4 instanceof TLRPC.TL_messages_favedStickers) {
            str4 = "fav";
        } else {
            str3 = str2;
            int i5 = 1;
            if (str2 != null || (arrayList3 = fileRefController.parentRequester.get(str2)) == null) {
                tL_error2 = tL_error;
                tLObject2 = tLObject4;
                z3 = false;
            } else {
                int size = arrayList3.size();
                int i6 = 0;
                z3 = false;
                while (i6 < size) {
                    Requester requester2 = arrayList3.get(i6);
                    if (requester2.completed) {
                        tLObject3 = tLObject4;
                    } else {
                        tLObject3 = tLObject4;
                        if (fileRefController.onRequestComplete(requester2.locationKey, null, tLObject4, tL_error, z && !z3, z2)) {
                            z3 = true;
                        }
                    }
                    i6++;
                    tLObject4 = tLObject3;
                }
                tL_error2 = tL_error;
                tLObject2 = tLObject4;
                if (z3) {
                    fileRefController.putReponseToCache(str3, tLObject2);
                }
                fileRefController.parentRequester.remove(str2);
            }
            arrayList = fileRefController.locationRequester.get(str);
            if (arrayList != null) {
                return z3;
            }
            int size2 = arrayList.size();
            boolean[] zArr3 = null;
            TLRPC.InputFileLocation[] inputFileLocationArr = null;
            byte[] fileReference2 = null;
            int i7 = 0;
            while (i7 < size2) {
                Requester requester3 = arrayList.get(i7);
                if (requester3.completed) {
                    z4 = z5;
                    arrayList2 = arrayList;
                    r10 = i5;
                } else {
                    if (tL_error2 != null && BuildVars.LOGS_ENABLED && requester3.args.length > i5 && (requester3.args[i5] instanceof FileLoadOperation)) {
                        FileLog.m1134e("debug_loading: " + ((FileLoadOperation) requester3.args[i5]).getCacheFileFinal().getName() + " can't update file reference: " + tL_error2.code + " " + tL_error2.text);
                    }
                    if ((requester3.location instanceof TLRPC.TL_inputFileLocation) || (requester3.location instanceof TLRPC.TL_inputPeerPhotoFileLocation)) {
                        inputFileLocationArr = new TLRPC.InputFileLocation[i5];
                        zArr3 = new boolean[i5];
                    }
                    TLRPC.InputFileLocation[] inputFileLocationArr2 = inputFileLocationArr;
                    boolean[] zArr4 = zArr3;
                    requester3.completed = i5;
                    if (tLObject2 instanceof StoriesController.BotPreview) {
                        TLRPC.MessageMedia messageMedia5 = ((StoriesController.BotPreview) tLObject2).media;
                        requester = requester3;
                        zArr = zArr4;
                        TLRPC.Document document2 = messageMedia5.document;
                        if (document2 != null) {
                            fileReference2 = fileRefController.getFileReference(document2, messageMedia5.alt_documents, requester.location, zArr, inputFileLocationArr2);
                        } else {
                            TLRPC.Photo photo5 = messageMedia5.photo;
                            if (photo5 != null) {
                                fileReference2 = fileRefController.getFileReference(photo5, requester.location, zArr, inputFileLocationArr2);
                            }
                        }
                        inputFileLocationArr = inputFileLocationArr2;
                        z4 = z5;
                        arrayList2 = arrayList;
                    } else {
                        requester = requester3;
                        zArr = zArr4;
                        if (tLObject2 instanceof TLRPC.messages_Messages) {
                            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject2;
                            if (!messages_messages.messages.isEmpty()) {
                                int size3 = messages_messages.messages.size();
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= size3) {
                                        z4 = z5;
                                        arrayList2 = arrayList;
                                        break;
                                    }
                                    TLRPC.Message message2 = (TLRPC.Message) messages_messages.messages.get(i8);
                                    TLRPC.MessageMedia messageMedia6 = message2.media;
                                    if (messageMedia6 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                        TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia6;
                                        i3 = i8;
                                        int i9 = 0;
                                        while (true) {
                                            if (i9 >= tL_messageMediaPaidMedia.extended_media.size()) {
                                                fileRefController = this;
                                                z4 = z5;
                                                arrayList2 = arrayList;
                                                message = message2;
                                                break;
                                            }
                                            TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i9);
                                            int i10 = i9;
                                            if (!(messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) || (messageMedia3 = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media) == null) {
                                                fileRefController = this;
                                                arrayList2 = arrayList;
                                                i4 = i10;
                                                z4 = z5;
                                                message = message2;
                                            } else {
                                                TLRPC.Document document3 = messageMedia3.document;
                                                if (document3 != null) {
                                                    z4 = z5;
                                                    message = message2;
                                                    i4 = i10;
                                                    arrayList2 = arrayList;
                                                    messageMedia4 = messageMedia3;
                                                    fileRefController = this;
                                                    fileReference2 = fileRefController.getFileReference(document3, messageMedia3.alt_documents, requester.location, zArr, inputFileLocationArr2);
                                                } else {
                                                    arrayList2 = arrayList;
                                                    i4 = i10;
                                                    messageMedia4 = messageMedia3;
                                                    z4 = z5;
                                                    message = message2;
                                                    TLRPC.TL_game tL_game = messageMedia4.game;
                                                    if (tL_game != null) {
                                                        fileRefController = this;
                                                        fileReference2 = fileRefController.getFileReference(tL_game.document, null, requester.location, zArr, inputFileLocationArr2);
                                                        if (fileReference2 == null) {
                                                            fileReference2 = fileRefController.getFileReference(messageMedia4.game.photo, requester.location, zArr, inputFileLocationArr2);
                                                        }
                                                    } else {
                                                        fileRefController = this;
                                                        TLRPC.Photo photo6 = messageMedia4.photo;
                                                        if (photo6 != null) {
                                                            fileReference2 = fileRefController.getFileReference(photo6, requester.location, zArr, inputFileLocationArr2);
                                                        } else {
                                                            TLRPC.WebPage webPage = messageMedia4.webpage;
                                                            if (webPage != null) {
                                                                fileReference2 = fileRefController.getFileReference(webPage, requester.location, zArr, inputFileLocationArr2);
                                                            }
                                                        }
                                                    }
                                                }
                                                if (fileReference2 == null && (photo4 = messageMedia4.video_cover) != null) {
                                                    fileReference2 = fileRefController.getFileReference(photo4, requester.location, zArr, inputFileLocationArr2);
                                                }
                                            }
                                            if (fileReference2 != null) {
                                                break;
                                            }
                                            i9 = i4 + 1;
                                            message2 = message;
                                            z5 = z4;
                                            arrayList = arrayList2;
                                        }
                                    } else {
                                        fileRefController = this;
                                        i3 = i8;
                                        z4 = z5;
                                        arrayList2 = arrayList;
                                        message = message2;
                                        if (messageMedia6 != null) {
                                            TLRPC.Document document4 = messageMedia6.document;
                                            if (document4 != null) {
                                                fileReference2 = fileRefController.getFileReference(document4, messageMedia6.alt_documents, requester.location, zArr, inputFileLocationArr2);
                                                fileRefController = this;
                                            } else {
                                                TLRPC.TL_game tL_game2 = messageMedia6.game;
                                                if (tL_game2 != null) {
                                                    fileRefController = this;
                                                    fileReference2 = fileRefController.getFileReference(tL_game2.document, null, requester.location, zArr, inputFileLocationArr2);
                                                    if (fileReference2 == null) {
                                                        fileReference2 = fileRefController.getFileReference(message.media.game.photo, requester.location, zArr, inputFileLocationArr2);
                                                    }
                                                } else {
                                                    fileRefController = this;
                                                    TLRPC.Photo photo7 = messageMedia6.photo;
                                                    if (photo7 != null) {
                                                        fileReference2 = fileRefController.getFileReference(photo7, requester.location, zArr, inputFileLocationArr2);
                                                    } else {
                                                        TLRPC.WebPage webPage2 = messageMedia6.webpage;
                                                        if (webPage2 != null) {
                                                            fileReference2 = fileRefController.getFileReference(webPage2, requester.location, zArr, inputFileLocationArr2);
                                                        }
                                                    }
                                                }
                                            }
                                            if (fileReference2 == null && (photo3 = message.media.video_cover) != null) {
                                                fileReference = fileRefController.getFileReference(photo3, requester.location, zArr, inputFileLocationArr2);
                                                fileReference2 = fileReference;
                                            }
                                        } else {
                                            TLRPC.MessageAction messageAction = message.action;
                                            if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto)) {
                                                fileReference = fileRefController.getFileReference(messageAction.photo, requester.location, zArr, inputFileLocationArr2);
                                                fileReference2 = fileReference;
                                            }
                                        }
                                        i7++;
                                        tL_error2 = tL_error;
                                        i5 = r10;
                                        z5 = z4;
                                        arrayList = arrayList2;
                                    }
                                    if (fileReference2 == null) {
                                        i8 = i3 + 1;
                                        z5 = z4;
                                        arrayList = arrayList2;
                                    } else if (z) {
                                        i2 = 0;
                                        fileRefController.getMessagesStorage().replaceMessageIfExists(message, messages_messages.users, messages_messages.chats, false);
                                    }
                                }
                                i2 = 0;
                                if (fileReference2 == null) {
                                    fileRefController.getMessagesStorage().replaceMessageIfExists((TLRPC.Message) messages_messages.messages.get(i2), messages_messages.users, messages_messages.chats, true);
                                    if (BuildVars.DEBUG_VERSION) {
                                        FileLog.m1133d("file ref not found in messages, replacing message");
                                    }
                                }
                            } else {
                                z4 = z5;
                                arrayList2 = arrayList;
                                if (BuildVars.DEBUG_VERSION) {
                                    FileLog.m1133d("empty messages, file ref not found");
                                }
                            }
                        } else {
                            z4 = z5;
                            arrayList2 = arrayList;
                            if (z4) {
                                ArrayList arrayList4 = ((TLRPC.TL_help_premiumPromo) tLObject2).videos;
                                int size4 = arrayList4.size();
                                int i11 = 0;
                                while (i11 < size4) {
                                    int i12 = i11 + 1;
                                    fileReference2 = fileRefController.getFileReference((TLRPC.Document) arrayList4.get(i11), null, requester.location, zArr, inputFileLocationArr2);
                                    if (fileReference2 != null) {
                                        break;
                                    }
                                    fileRefController = this;
                                    i11 = i12;
                                }
                            } else {
                                long j2 = 1000;
                                if (tLObject2 instanceof TLRPC.TL_messages_availableReactions) {
                                    TLRPC.TL_messages_availableReactions tL_messages_availableReactions = (TLRPC.TL_messages_availableReactions) tLObject2;
                                    getMediaDataController().processLoadedReactions(tL_messages_availableReactions.reactions, tL_messages_availableReactions.hash, (int) (System.currentTimeMillis() / 1000), false);
                                    ArrayList arrayList5 = tL_messages_availableReactions.reactions;
                                    int size5 = arrayList5.size();
                                    int i13 = 0;
                                    while (i13 < size5) {
                                        int i14 = i13 + 1;
                                        TLRPC.TL_availableReaction tL_availableReaction = (TLRPC.TL_availableReaction) arrayList5.get(i13);
                                        byte[] fileReference3 = getFileReference(tL_availableReaction.static_icon, null, requester.location, zArr, inputFileLocationArr2);
                                        if (fileReference3 != null || (fileReference3 = getFileReference(tL_availableReaction.appear_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference3 = getFileReference(tL_availableReaction.select_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference3 = getFileReference(tL_availableReaction.activate_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference3 = getFileReference(tL_availableReaction.effect_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference3 = getFileReference(tL_availableReaction.around_animation, null, requester.location, zArr, inputFileLocationArr2)) != null) {
                                            fileReference2 = fileReference3;
                                            break;
                                        }
                                        fileReference2 = getFileReference(tL_availableReaction.center_icon, null, requester.location, zArr, inputFileLocationArr2);
                                        if (fileReference2 != null) {
                                            break;
                                        }
                                        i13 = i14;
                                    }
                                } else {
                                    if (tLObject2 instanceof TLRPC.TL_users_userFull) {
                                        TLRPC.TL_users_userFull tL_users_userFull = (TLRPC.TL_users_userFull) tLObject2;
                                        getMessagesController().putUsers(tL_users_userFull.users, false);
                                        getMessagesController().putChats(tL_users_userFull.chats, false);
                                        TLRPC.UserFull userFull = tL_users_userFull.full_user;
                                        TL_bots.BotInfo botInfo = userFull.bot_info;
                                        if (botInfo != null) {
                                            getMessagesStorage().updateUserInfo(userFull, true);
                                            fileRefController = this;
                                            fileReference2 = fileRefController.getFileReference(botInfo.description_document, null, requester.location, zArr, inputFileLocationArr2);
                                            if (fileReference2 != null) {
                                                zArr3 = zArr;
                                                inputFileLocationArr = inputFileLocationArr2;
                                                r10 = 1;
                                            } else {
                                                fileReference2 = fileRefController.getFileReference(botInfo.description_photo, requester.location, zArr, inputFileLocationArr2);
                                            }
                                        } else {
                                            fileRefController = this;
                                        }
                                    } else {
                                        FileRefController fileRefController2 = this;
                                        if (tLObject2 instanceof TLRPC.TL_attachMenuBotsBot) {
                                            TLRPC.TL_attachMenuBot tL_attachMenuBot = ((TLRPC.TL_attachMenuBotsBot) tLObject2).bot;
                                            ArrayList arrayList6 = tL_attachMenuBot.icons;
                                            int size6 = arrayList6.size();
                                            int i15 = 0;
                                            while (i15 < size6) {
                                                int i16 = i15 + 1;
                                                fileReference2 = fileRefController2.getFileReference(((TLRPC.TL_attachMenuBotIcon) arrayList6.get(i15)).icon, null, requester.location, zArr, inputFileLocationArr2);
                                                if (fileReference2 != null) {
                                                    break;
                                                }
                                                fileRefController2 = this;
                                                i15 = i16;
                                            }
                                            if (z) {
                                                TLRPC.TL_attachMenuBots attachMenuBots = getMediaDataController().getAttachMenuBots();
                                                ArrayList arrayList7 = new ArrayList(attachMenuBots.bots);
                                                int i17 = 0;
                                                while (true) {
                                                    if (i17 >= arrayList7.size()) {
                                                        bArr = fileReference2;
                                                        zArr2 = zArr;
                                                        j = j2;
                                                        break;
                                                    }
                                                    j = j2;
                                                    bArr = fileReference2;
                                                    zArr2 = zArr;
                                                    if (((TLRPC.TL_attachMenuBot) arrayList7.get(i17)).bot_id == tL_attachMenuBot.bot_id) {
                                                        arrayList7.set(i17, tL_attachMenuBot);
                                                        break;
                                                    }
                                                    i17++;
                                                    zArr = zArr2;
                                                    fileReference2 = bArr;
                                                    j2 = j;
                                                }
                                                attachMenuBots.bots = arrayList7;
                                                getMediaDataController().processLoadedMenuBots(attachMenuBots, attachMenuBots.hash, (int) (System.currentTimeMillis() / j), false);
                                            } else {
                                                bArr = fileReference2;
                                                zArr2 = zArr;
                                            }
                                            fileRefController = this;
                                            inputFileLocationArr = inputFileLocationArr2;
                                            zArr = zArr2;
                                            fileReference2 = bArr;
                                        } else if (tLObject2 instanceof TLRPC.TL_help_appUpdate) {
                                            TLRPC.TL_help_appUpdate tL_help_appUpdate = (TLRPC.TL_help_appUpdate) tLObject2;
                                            try {
                                                SharedConfig.pendingAppUpdate = tL_help_appUpdate;
                                                SharedConfig.saveConfig();
                                            } catch (Exception e) {
                                                FileLog.m1136e(e);
                                            }
                                            try {
                                                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
                                            } catch (Exception e2) {
                                                FileLog.m1136e(e2);
                                            }
                                            try {
                                                TLRPC.Document document5 = tL_help_appUpdate.document;
                                                if (document5 != null) {
                                                    fileReference2 = document5.file_reference;
                                                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                                                    TLRPC.Document document6 = tL_help_appUpdate.document;
                                                    tL_inputDocumentFileLocation.f1680id = document6.f1668id;
                                                    tL_inputDocumentFileLocation.access_hash = document6.access_hash;
                                                    tL_inputDocumentFileLocation.file_reference = document6.file_reference;
                                                    tL_inputDocumentFileLocation.thumb_size = _UrlKt.FRAGMENT_ENCODE_SET;
                                                    inputFileLocationArr2 = new TLRPC.InputFileLocation[]{tL_inputDocumentFileLocation};
                                                }
                                            } catch (Exception e3) {
                                                FileLog.m1136e(e3);
                                                fileReference2 = null;
                                            }
                                            if (fileReference2 == null) {
                                                zArr = zArr;
                                                fileReference2 = getFileReference(tL_help_appUpdate.document, null, requester.location, zArr, inputFileLocationArr2);
                                            } else {
                                                zArr = zArr;
                                            }
                                            if (fileReference2 == null) {
                                                fileRefController = this;
                                                fileReference2 = fileRefController.getFileReference(tL_help_appUpdate.sticker, null, requester.location, zArr, inputFileLocationArr2);
                                            }
                                        } else {
                                            fileRefController = this;
                                            zArr = zArr;
                                            if (tLObject2 instanceof TLRPC.TL_messages_webPage) {
                                                TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject2;
                                                fileRefController.getMessagesController().putChats(tL_messages_webPage.chats, false);
                                                fileRefController.getMessagesController().putUsers(tL_messages_webPage.users, false);
                                                fileReference2 = fileRefController.getFileReference(tL_messages_webPage.webpage, requester.location, zArr, inputFileLocationArr2);
                                            } else if (tLObject2 instanceof TLRPC.WebPage) {
                                                fileReference2 = fileRefController.getFileReference((TLRPC.WebPage) tLObject2, requester.location, zArr, inputFileLocationArr2);
                                            } else if (tLObject2 instanceof TL_account.TL_wallPapers) {
                                                TL_account.TL_wallPapers tL_wallPapers = (TL_account.TL_wallPapers) tLObject2;
                                                int size7 = tL_wallPapers.wallpapers.size();
                                                int i18 = 0;
                                                while (i18 < size7) {
                                                    fileReference2 = fileRefController.getFileReference(tL_wallPapers.wallpapers.get(i18).document, null, requester.location, zArr, inputFileLocationArr2);
                                                    if (fileReference2 != null) {
                                                        break;
                                                    }
                                                    i18++;
                                                    fileRefController = this;
                                                }
                                                if (fileReference2 != null && z) {
                                                    getMessagesStorage().putWallpapers(tL_wallPapers.wallpapers, 1);
                                                }
                                            } else if (tLObject2 instanceof TLRPC.TL_wallPaper) {
                                                TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) tLObject2;
                                                fileReference2 = getFileReference(tL_wallPaper.document, null, requester.location, zArr, inputFileLocationArr2);
                                                if (fileReference2 != null && z) {
                                                    ArrayList<TLRPC.WallPaper> arrayList8 = new ArrayList<>();
                                                    arrayList8.add(tL_wallPaper);
                                                    getMessagesStorage().putWallpapers(arrayList8, 0);
                                                }
                                            } else if (tLObject2 instanceof TLRPC.TL_theme) {
                                                final TLRPC.TL_theme tL_theme = (TLRPC.TL_theme) tLObject2;
                                                fileRefController = this;
                                                fileReference2 = fileRefController.getFileReference(tL_theme.document, null, requester.location, zArr, inputFileLocationArr2);
                                                if (fileReference2 != null && z) {
                                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda0
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            Theme.setThemeFileReference(tL_theme);
                                                        }
                                                    });
                                                }
                                            } else {
                                                fileRefController = this;
                                                if (tLObject2 instanceof Vector) {
                                                    Vector vector = (Vector) tLObject2;
                                                    if (!vector.objects.isEmpty()) {
                                                        int size8 = vector.objects.size();
                                                        int i19 = 0;
                                                        while (i19 < size8) {
                                                            Object obj = vector.objects.get(i19);
                                                            if (obj instanceof TLRPC.User) {
                                                                final TLRPC.User user = (TLRPC.User) obj;
                                                                fileReference2 = fileRefController.getFileReference(user, requester.location, zArr, inputFileLocationArr2);
                                                                if (!z || fileReference2 == null) {
                                                                    i = size8;
                                                                } else {
                                                                    ArrayList arrayList9 = new ArrayList();
                                                                    arrayList9.add(user);
                                                                    i = size8;
                                                                    fileRefController.getMessagesStorage().putUsersAndChats(arrayList9, null, true, true);
                                                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            this.f$0.lambda$onRequestComplete$41(user);
                                                                        }
                                                                    });
                                                                }
                                                            } else {
                                                                i = size8;
                                                                if (obj instanceof TLRPC.Chat) {
                                                                    final TLRPC.Chat chat = (TLRPC.Chat) obj;
                                                                    byte[] fileReference4 = fileRefController.getFileReference(chat, requester.location, zArr, inputFileLocationArr2);
                                                                    if (z && fileReference4 != null) {
                                                                        ArrayList arrayList10 = new ArrayList();
                                                                        arrayList10.add(chat);
                                                                        fileRefController.getMessagesStorage().putUsersAndChats(null, arrayList10, true, true);
                                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda2
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                this.f$0.lambda$onRequestComplete$42(chat);
                                                                            }
                                                                        });
                                                                    }
                                                                    fileReference2 = fileReference4;
                                                                }
                                                            }
                                                            if (fileReference2 != null) {
                                                                break;
                                                            }
                                                            i19++;
                                                            size8 = i;
                                                        }
                                                    }
                                                } else {
                                                    if (tLObject2 instanceof TLRPC.TL_messages_chats) {
                                                        TLRPC.TL_messages_chats tL_messages_chats = (TLRPC.TL_messages_chats) tLObject2;
                                                        if (tL_messages_chats.chats.isEmpty()) {
                                                            inputFileLocation = null;
                                                        } else {
                                                            int size9 = tL_messages_chats.chats.size();
                                                            int i20 = 0;
                                                            while (i20 < size9) {
                                                                final TLRPC.Chat chat2 = (TLRPC.Chat) tL_messages_chats.chats.get(i20);
                                                                byte[] fileReference5 = fileRefController.getFileReference(chat2, requester.location, zArr, inputFileLocationArr2);
                                                                if (fileReference5 != null) {
                                                                    if (z) {
                                                                        ArrayList arrayList11 = new ArrayList();
                                                                        arrayList11.add(chat2);
                                                                        inputFileLocation = null;
                                                                        fileRefController.getMessagesStorage().putUsersAndChats(null, arrayList11, true, true);
                                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda3
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                this.f$0.lambda$onRequestComplete$43(chat2);
                                                                            }
                                                                        });
                                                                    } else {
                                                                        inputFileLocation = null;
                                                                    }
                                                                    fileReference2 = fileReference5;
                                                                } else {
                                                                    i20++;
                                                                    fileReference2 = fileReference5;
                                                                }
                                                            }
                                                            inputFileLocation = null;
                                                        }
                                                    } else {
                                                        inputFileLocation = null;
                                                        if (tLObject2 instanceof TLRPC.TL_messages_savedGifs) {
                                                            TLRPC.TL_messages_savedGifs tL_messages_savedGifs = (TLRPC.TL_messages_savedGifs) tLObject2;
                                                            int size10 = tL_messages_savedGifs.gifs.size();
                                                            int i21 = 0;
                                                            while (i21 < size10) {
                                                                fileReference2 = fileRefController.getFileReference((TLRPC.Document) tL_messages_savedGifs.gifs.get(i21), null, requester.location, zArr, inputFileLocationArr2);
                                                                if (fileReference2 != null) {
                                                                    break;
                                                                }
                                                                i21++;
                                                                fileRefController = this;
                                                            }
                                                            if (z) {
                                                                getMediaDataController().processLoadedRecentDocuments(0, tL_messages_savedGifs.gifs, true, 0, true);
                                                            }
                                                        } else if (tLObject2 instanceof TLRPC.TL_messages_stickerSet) {
                                                            final TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject2;
                                                            if (fileReference2 == null) {
                                                                int size11 = tL_messages_stickerSet.documents.size();
                                                                for (int i22 = 0; i22 < size11; i22++) {
                                                                    fileRefController = this;
                                                                    fileReference2 = fileRefController.getFileReference((TLRPC.Document) tL_messages_stickerSet.documents.get(i22), null, requester.location, zArr, inputFileLocationArr2);
                                                                    if (fileReference2 != null) {
                                                                        break;
                                                                    }
                                                                }
                                                                fileRefController = this;
                                                                if (z) {
                                                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda4
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            this.f$0.lambda$onRequestComplete$44(tL_messages_stickerSet);
                                                                        }
                                                                    });
                                                                }
                                                            } else {
                                                                fileRefController = this;
                                                                if (z) {
                                                                }
                                                            }
                                                        } else {
                                                            FileRefController fileRefController3 = this;
                                                            if (tLObject2 instanceof TLRPC.TL_messages_recentStickers) {
                                                                TLRPC.TL_messages_recentStickers tL_messages_recentStickers = (TLRPC.TL_messages_recentStickers) tLObject2;
                                                                int size12 = tL_messages_recentStickers.stickers.size();
                                                                int i23 = 0;
                                                                while (i23 < size12) {
                                                                    fileReference2 = fileRefController3.getFileReference((TLRPC.Document) tL_messages_recentStickers.stickers.get(i23), null, requester.location, zArr, inputFileLocationArr2);
                                                                    if (fileReference2 != null) {
                                                                        break;
                                                                    }
                                                                    i23++;
                                                                    fileRefController3 = this;
                                                                }
                                                                if (z) {
                                                                    getMediaDataController().processLoadedRecentDocuments(0, tL_messages_recentStickers.stickers, false, 0, true);
                                                                }
                                                            } else if (tLObject2 instanceof TLRPC.TL_messages_favedStickers) {
                                                                TLRPC.TL_messages_favedStickers tL_messages_favedStickers = (TLRPC.TL_messages_favedStickers) tLObject2;
                                                                int size13 = tL_messages_favedStickers.stickers.size();
                                                                int i24 = 0;
                                                                while (true) {
                                                                    if (i24 >= size13) {
                                                                        fileRefController = this;
                                                                        break;
                                                                    }
                                                                    fileRefController = this;
                                                                    fileReference2 = fileRefController.getFileReference((TLRPC.Document) tL_messages_favedStickers.stickers.get(i24), null, requester.location, zArr, inputFileLocationArr2);
                                                                    if (fileReference2 != null) {
                                                                        break;
                                                                    }
                                                                    i24++;
                                                                }
                                                                if (z) {
                                                                    fileRefController.getMediaDataController().processLoadedRecentDocuments(2, tL_messages_favedStickers.stickers, false, 0, true);
                                                                }
                                                            } else {
                                                                fileRefController = this;
                                                                if (tLObject2 instanceof TLRPC.photos_Photos) {
                                                                    TLRPC.photos_Photos photos_photos = (TLRPC.photos_Photos) tLObject2;
                                                                    int size14 = photos_photos.photos.size();
                                                                    for (int i25 = 0; i25 < size14; i25++) {
                                                                        fileReference2 = fileRefController.getFileReference((TLRPC.Photo) photos_photos.photos.get(i25), requester.location, zArr, inputFileLocationArr2);
                                                                        if (fileReference2 != null) {
                                                                            break;
                                                                        }
                                                                    }
                                                                } else if (tLObject2 instanceof TL_stories.TL_stories_stories) {
                                                                    TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject2;
                                                                    if (tL_stories_stories.stories.isEmpty() || (messageMedia = (storyItem = tL_stories_stories.stories.get(0)).media) == null) {
                                                                        storyItem = null;
                                                                    } else {
                                                                        if (fileReference2 == null && (photo2 = messageMedia.photo) != null) {
                                                                            fileReference2 = fileRefController.getFileReference(photo2, requester.location, zArr, inputFileLocationArr2);
                                                                        }
                                                                        if (fileReference2 == null && (photo = storyItem.media.video_cover) != null) {
                                                                            fileReference2 = fileRefController.getFileReference(photo, requester.location, zArr, inputFileLocationArr2);
                                                                        }
                                                                        if (fileReference2 == null && (document = (messageMedia2 = storyItem.media).document) != null) {
                                                                            fileReference2 = fileRefController.getFileReference(document, messageMedia2.alt_documents, requester.location, zArr, inputFileLocationArr2);
                                                                        }
                                                                    }
                                                                    if (requester.args[1] instanceof FileLoadOperation) {
                                                                        Object obj2 = ((FileLoadOperation) requester.args[1]).parentObject;
                                                                        if (obj2 instanceof TL_stories.StoryItem) {
                                                                            TL_stories.StoryItem storyItem2 = (TL_stories.StoryItem) obj2;
                                                                            if (storyItem == null) {
                                                                                TL_stories.TL_updateStory tL_updateStory = new TL_stories.TL_updateStory();
                                                                                tL_updateStory.peer = fileRefController.getMessagesController().getPeer(storyItem2.dialogId);
                                                                                TL_stories.TL_storyItemDeleted tL_storyItemDeleted = new TL_stories.TL_storyItemDeleted();
                                                                                tL_updateStory.story = tL_storyItemDeleted;
                                                                                tL_storyItemDeleted.f1857id = storyItem2.f1857id;
                                                                                ArrayList<TLRPC.Update> arrayList12 = new ArrayList<>();
                                                                                arrayList12.add(tL_updateStory);
                                                                                fileRefController.getMessagesController().processUpdateArray(arrayList12, null, null, false, 0);
                                                                            } else {
                                                                                TLRPC.User user2 = fileRefController.getMessagesController().getUser(Long.valueOf(storyItem2.dialogId));
                                                                                if (user2 != null && user2.contact) {
                                                                                    MessagesController.getInstance(fileRefController.currentAccount).getStoriesController().getStoriesStorage().updateStoryItem(storyItem2.dialogId, storyItem);
                                                                                }
                                                                            }
                                                                            if (storyItem != null && fileReference2 == null) {
                                                                                TL_stories.TL_updateStory tL_updateStory2 = new TL_stories.TL_updateStory();
                                                                                tL_updateStory2.peer = MessagesController.getInstance(fileRefController.currentAccount).getPeer(storyItem2.dialogId);
                                                                                tL_updateStory2.story = storyItem;
                                                                                ArrayList<TLRPC.Update> arrayList13 = new ArrayList<>();
                                                                                arrayList13.add(tL_updateStory2);
                                                                                MessagesController.getInstance(fileRefController.currentAccount).processUpdateArray(arrayList13, null, null, false, 0);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        fileRefController = this;
                                                    }
                                                    inputFileLocationArr = inputFileLocationArr2;
                                                    if (fileReference2 == null) {
                                                        r10 = 1;
                                                        fileRefController.sendErrorToObject(requester.args, 1);
                                                    } else if (fileRefController.onUpdateObjectReference(requester, fileReference2, inputFileLocationArr != null ? inputFileLocationArr[0] : inputFileLocation, z2)) {
                                                        zArr3 = zArr;
                                                        r10 = 1;
                                                        z3 = true;
                                                    } else {
                                                        r10 = 1;
                                                    }
                                                    zArr3 = zArr;
                                                }
                                            }
                                        }
                                    }
                                    i7++;
                                    tL_error2 = tL_error;
                                    i5 = r10;
                                    z5 = z4;
                                    arrayList = arrayList2;
                                }
                            }
                            inputFileLocation = null;
                            fileRefController = this;
                            inputFileLocationArr = inputFileLocationArr2;
                            if (fileReference2 == null) {
                            }
                            zArr3 = zArr;
                            i7++;
                            tL_error2 = tL_error;
                            i5 = r10;
                            z5 = z4;
                            arrayList = arrayList2;
                        }
                        inputFileLocationArr = inputFileLocationArr2;
                    }
                    inputFileLocation = null;
                    if (fileReference2 == null) {
                    }
                    zArr3 = zArr;
                    i7++;
                    tL_error2 = tL_error;
                    i5 = r10;
                    z5 = z4;
                    arrayList = arrayList2;
                }
                i7++;
                tL_error2 = tL_error;
                i5 = r10;
                z5 = z4;
                arrayList = arrayList2;
            }
            fileRefController.locationRequester.remove(str);
            if (z3) {
                fileRefController.putReponseToCache(str, tLObject2);
            }
            return z3;
        }
        str3 = str4;
        int i52 = 1;
        if (str2 != null) {
            tL_error2 = tL_error;
            tLObject2 = tLObject4;
            z3 = false;
        }
        arrayList = fileRefController.locationRequester.get(str);
        if (arrayList != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$41(TLRPC.User user) {
        getMessagesController().putUser(user, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$42(TLRPC.Chat chat) {
        getMessagesController().putChat(chat, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$43(TLRPC.Chat chat) {
        getMessagesController().putChat(chat, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$44(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        getMediaDataController().replaceStickerSet(tL_messages_stickerSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0615 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0616  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Pair<byte[], TLRPC.InputFileLocation> getFileReferenceFromResponse(TLRPC.InputFileLocation inputFileLocation, String str, String str2, TLObject tLObject, Object... objArr) {
        TLRPC.InputFileLocation[] inputFileLocationArr;
        boolean[] zArr;
        TLObject tLObject2;
        byte[] fileReference;
        TLRPC.InputFileLocation[] inputFileLocationArr2;
        TL_stories.StoryItem storyItem;
        TLRPC.MessageMedia messageMedia;
        TLRPC.MessageMedia messageMedia2;
        TLRPC.Document document;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        byte[] fileReference2;
        TLRPC.InputFileLocation[] inputFileLocationArr3;
        byte[] fileReference3;
        boolean[] zArr2;
        TLRPC.InputFileLocation[] inputFileLocationArr4;
        FileRefController fileRefController;
        TLRPC.InputFileLocation inputFileLocation2;
        boolean[] zArr3;
        FileRefController fileRefController2;
        byte[] fileReference4;
        TLRPC.Photo photo3;
        TLRPC.MessageMedia messageMedia3;
        TLRPC.Photo photo4;
        TLRPC.InputFileLocation inputFileLocation3;
        FileRefController fileRefController3;
        TLRPC.InputFileLocation inputFileLocation4 = null;
        if ((inputFileLocation instanceof TLRPC.TL_inputFileLocation) || (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation)) {
            inputFileLocationArr = new TLRPC.InputFileLocation[1];
            zArr = new boolean[1];
        } else {
            inputFileLocationArr = null;
            zArr = null;
        }
        if (str2 != null) {
            tLObject2 = tLObject;
            Pair<byte[], TLRPC.InputFileLocation> fileReferenceFromResponse = getFileReferenceFromResponse(inputFileLocation, str, null, tLObject2, objArr);
            if (fileReferenceFromResponse != null) {
                fileReference = (byte[]) fileReferenceFromResponse.first;
                Object obj = fileReferenceFromResponse.second;
                if (obj != null && inputFileLocationArr != null) {
                    inputFileLocationArr[0] = (TLRPC.InputFileLocation) obj;
                }
            }
            if (!(tLObject2 instanceof StoriesController.BotPreview)) {
                TLRPC.MessageMedia messageMedia4 = ((StoriesController.BotPreview) tLObject2).media;
                TLRPC.Document document2 = messageMedia4.document;
                if (document2 != null) {
                    inputFileLocationArr2 = inputFileLocationArr;
                    byte[] fileReference5 = getFileReference(document2, messageMedia4.alt_documents, inputFileLocation, zArr, inputFileLocationArr2);
                    fileRefController3 = this;
                    fileReference = fileReference5;
                } else {
                    fileRefController3 = this;
                    inputFileLocationArr2 = inputFileLocationArr;
                    boolean[] zArr4 = zArr;
                    TLRPC.Photo photo5 = messageMedia4.photo;
                    if (photo5 != null) {
                        fileReference = fileRefController3.getFileReference(photo5, inputFileLocation, zArr4, inputFileLocationArr2);
                    }
                }
            } else {
                FileRefController fileRefController4 = this;
                TLRPC.InputFileLocation inputFileLocation5 = inputFileLocation;
                inputFileLocationArr2 = inputFileLocationArr;
                boolean[] zArr5 = zArr;
                if (tLObject2 instanceof TLRPC.messages_Messages) {
                    TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject2;
                    if (!messages_messages.messages.isEmpty()) {
                        int size = messages_messages.messages.size();
                        int i = 0;
                        while (i < size) {
                            TLRPC.Message message = (TLRPC.Message) messages_messages.messages.get(i);
                            TLRPC.MessageMedia messageMedia5 = message.media;
                            if (messageMedia5 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia5;
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= tL_messageMediaPaidMedia.extended_media.size()) {
                                        zArr3 = zArr5;
                                        fileRefController2 = fileRefController4;
                                        break;
                                    }
                                    TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i2);
                                    if (!(messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) || (messageMedia3 = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media) == null) {
                                        zArr3 = zArr5;
                                        fileRefController2 = fileRefController4;
                                    } else {
                                        TLRPC.Document document3 = messageMedia3.document;
                                        if (document3 != null) {
                                            boolean[] zArr6 = zArr5;
                                            byte[] fileReference6 = getFileReference(document3, messageMedia3.alt_documents, inputFileLocation5, zArr6, inputFileLocationArr2);
                                            fileRefController2 = this;
                                            inputFileLocation5 = inputFileLocation;
                                            fileReference = fileReference6;
                                            zArr3 = zArr6;
                                        } else {
                                            boolean[] zArr7 = zArr5;
                                            TLRPC.TL_game tL_game = messageMedia3.game;
                                            if (tL_game != null) {
                                                inputFileLocation5 = inputFileLocation;
                                                byte[] fileReference7 = getFileReference(tL_game.document, null, inputFileLocation5, zArr7, inputFileLocationArr2);
                                                fileRefController2 = this;
                                                zArr3 = zArr7;
                                                fileReference = fileReference7 == null ? fileRefController2.getFileReference(messageMedia3.game.photo, inputFileLocation5, zArr3, inputFileLocationArr2) : fileReference7;
                                            } else {
                                                fileRefController2 = this;
                                                inputFileLocation5 = inputFileLocation;
                                                zArr3 = zArr7;
                                                TLRPC.Photo photo6 = messageMedia3.photo;
                                                if (photo6 != null) {
                                                    fileReference = fileRefController2.getFileReference(photo6, inputFileLocation5, zArr3, inputFileLocationArr2);
                                                } else {
                                                    TLRPC.WebPage webPage = messageMedia3.webpage;
                                                    if (webPage != null) {
                                                        fileReference = fileRefController2.getFileReference(webPage, inputFileLocation5, zArr3, inputFileLocationArr2);
                                                    }
                                                }
                                            }
                                        }
                                        if (fileReference == null && (photo4 = messageMedia3.video_cover) != null) {
                                            fileReference = fileRefController2.getFileReference(photo4, inputFileLocation5, zArr3, inputFileLocationArr2);
                                        }
                                    }
                                    if (fileReference != null) {
                                        break;
                                    }
                                    i2++;
                                    fileRefController4 = fileRefController2;
                                    zArr5 = zArr3;
                                }
                            } else {
                                zArr3 = zArr5;
                                fileRefController2 = fileRefController4;
                                if (messageMedia5 != null) {
                                    TLRPC.Document document4 = messageMedia5.document;
                                    if (document4 != null) {
                                        fileReference4 = getFileReference(document4, messageMedia5.alt_documents, inputFileLocation5, zArr3, inputFileLocationArr2);
                                        fileRefController2 = this;
                                        inputFileLocation5 = inputFileLocation;
                                    } else {
                                        TLRPC.TL_game tL_game2 = messageMedia5.game;
                                        if (tL_game2 != null) {
                                            inputFileLocation5 = inputFileLocation;
                                            fileReference4 = getFileReference(tL_game2.document, null, inputFileLocation5, zArr3, inputFileLocationArr2);
                                            fileRefController2 = this;
                                            if (fileReference4 == null) {
                                                fileReference = fileRefController2.getFileReference(message.media.game.photo, inputFileLocation5, zArr3, inputFileLocationArr2);
                                            }
                                        } else {
                                            fileRefController2 = this;
                                            inputFileLocation5 = inputFileLocation;
                                            TLRPC.Photo photo7 = messageMedia5.photo;
                                            if (photo7 != null) {
                                                fileReference = fileRefController2.getFileReference(photo7, inputFileLocation5, zArr3, inputFileLocationArr2);
                                            } else {
                                                TLRPC.WebPage webPage2 = messageMedia5.webpage;
                                                if (webPage2 != null) {
                                                    fileReference = fileRefController2.getFileReference(webPage2, inputFileLocation5, zArr3, inputFileLocationArr2);
                                                }
                                            }
                                        }
                                        if (fileReference != null && (photo3 = message.media.video_cover) != null) {
                                            fileReference = fileRefController2.getFileReference(photo3, inputFileLocation5, zArr3, inputFileLocationArr2);
                                        }
                                    }
                                    fileReference = fileReference4;
                                    if (fileReference != null) {
                                    }
                                } else {
                                    TLRPC.MessageAction messageAction = message.action;
                                    if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto)) {
                                        fileReference = fileRefController2.getFileReference(messageAction.photo, inputFileLocation5, zArr3, inputFileLocationArr2);
                                    }
                                }
                            }
                            i++;
                            fileRefController4 = fileRefController2;
                            zArr5 = zArr3;
                        }
                        FileRefController fileRefController5 = fileRefController4;
                        if (fileReference == null) {
                            fileRefController5.getMessagesStorage().replaceMessageIfExists((TLRPC.Message) messages_messages.messages.get(0), messages_messages.users, messages_messages.chats, true);
                            if (BuildVars.DEBUG_VERSION) {
                                FileLog.m1133d("file ref not found in messages, replacing message");
                            }
                        }
                    } else if (BuildVars.DEBUG_VERSION) {
                        FileLog.m1133d("empty messages, file ref not found");
                    }
                } else {
                    boolean[] zArr8 = zArr5;
                    if (tLObject2 instanceof TLRPC.TL_help_premiumPromo) {
                        ArrayList arrayList = ((TLRPC.TL_help_premiumPromo) tLObject2).videos;
                        int size2 = arrayList.size();
                        int i3 = 0;
                        while (i3 < size2) {
                            int i4 = i3 + 1;
                            fileReference2 = getFileReference((TLRPC.Document) arrayList.get(i3), null, inputFileLocation5, zArr8, inputFileLocationArr2);
                            if (fileReference2 != null) {
                                fileReference = fileReference2;
                                break;
                            }
                            inputFileLocation5 = inputFileLocation;
                            fileReference = fileReference2;
                            i3 = i4;
                        }
                    } else {
                        if (tLObject2 instanceof TLRPC.TL_messages_availableReactions) {
                            TLRPC.TL_messages_availableReactions tL_messages_availableReactions = (TLRPC.TL_messages_availableReactions) tLObject2;
                            getMediaDataController().processLoadedReactions(tL_messages_availableReactions.reactions, tL_messages_availableReactions.hash, (int) (System.currentTimeMillis() / 1000), false);
                            ArrayList arrayList2 = tL_messages_availableReactions.reactions;
                            int size3 = arrayList2.size();
                            int i5 = 0;
                            while (i5 < size3) {
                                int i6 = i5 + 1;
                                TLRPC.TL_availableReaction tL_availableReaction = (TLRPC.TL_availableReaction) arrayList2.get(i5);
                                boolean[] zArr9 = zArr8;
                                fileReference2 = getFileReference(tL_availableReaction.static_icon, null, inputFileLocation, zArr9, inputFileLocationArr2);
                                if (fileReference2 == null && (fileReference2 = getFileReference(tL_availableReaction.appear_animation, null, inputFileLocation, zArr9, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.select_animation, null, inputFileLocation, zArr9, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.activate_animation, null, inputFileLocation, zArr9, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.effect_animation, null, inputFileLocation, zArr9, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.around_animation, null, inputFileLocation, zArr9, inputFileLocationArr2)) == null) {
                                    fileReference2 = getFileReference(tL_availableReaction.center_icon, null, inputFileLocation, zArr9, inputFileLocationArr2);
                                    zArr8 = zArr9;
                                    if (fileReference2 == null) {
                                        fileReference = fileReference2;
                                        i5 = i6;
                                    }
                                }
                                fileReference = fileReference2;
                                break;
                            }
                        }
                        if (tLObject2 instanceof TLRPC.TL_users_userFull) {
                            TLRPC.TL_users_userFull tL_users_userFull = (TLRPC.TL_users_userFull) tLObject2;
                            getMessagesController().putUsers(tL_users_userFull.users, false);
                            getMessagesController().putChats(tL_users_userFull.chats, false);
                            TLRPC.UserFull userFull = tL_users_userFull.full_user;
                            TL_bots.BotInfo botInfo = userFull.bot_info;
                            if (botInfo != null) {
                                getMessagesStorage().updateUserInfo(userFull, true);
                                if (fileReference == null) {
                                    inputFileLocation2 = inputFileLocation;
                                    fileRefController = this;
                                    fileReference = getFileReference(botInfo.description_document, null, inputFileLocation2, zArr8, inputFileLocationArr2);
                                } else {
                                    fileRefController = this;
                                    inputFileLocation2 = inputFileLocation;
                                }
                                if (fileReference == null) {
                                    fileReference = fileRefController.getFileReference(botInfo.description_photo, inputFileLocation2, zArr8, inputFileLocationArr2);
                                }
                            }
                        } else {
                            TLRPC.InputFileLocation inputFileLocation6 = inputFileLocation;
                            if (tLObject2 instanceof TLRPC.TL_attachMenuBotsBot) {
                                ArrayList arrayList3 = ((TLRPC.TL_attachMenuBotsBot) tLObject2).bot.icons;
                                int size4 = arrayList3.size();
                                int i7 = 0;
                                while (i7 < size4) {
                                    int i8 = i7 + 1;
                                    fileReference2 = getFileReference(((TLRPC.TL_attachMenuBotIcon) arrayList3.get(i7)).icon, null, inputFileLocation6, zArr8, inputFileLocationArr2);
                                    if (fileReference2 != null) {
                                        fileReference = fileReference2;
                                        break;
                                    }
                                    inputFileLocation6 = inputFileLocation;
                                    fileReference = fileReference2;
                                    i7 = i8;
                                }
                            } else if (tLObject2 instanceof TLRPC.TL_help_appUpdate) {
                                TLRPC.TL_help_appUpdate tL_help_appUpdate = (TLRPC.TL_help_appUpdate) tLObject2;
                                try {
                                    SharedConfig.pendingAppUpdate = tL_help_appUpdate;
                                    SharedConfig.saveConfig();
                                } catch (Exception e) {
                                    FileLog.m1136e(e);
                                }
                                try {
                                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
                                } catch (Exception e2) {
                                    FileLog.m1136e(e2);
                                }
                                try {
                                    TLRPC.Document document5 = tL_help_appUpdate.document;
                                    if (document5 != null) {
                                        fileReference = document5.file_reference;
                                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                                        TLRPC.Document document6 = tL_help_appUpdate.document;
                                        tL_inputDocumentFileLocation.f1680id = document6.f1668id;
                                        tL_inputDocumentFileLocation.access_hash = document6.access_hash;
                                        tL_inputDocumentFileLocation.file_reference = document6.file_reference;
                                        tL_inputDocumentFileLocation.thumb_size = _UrlKt.FRAGMENT_ENCODE_SET;
                                        inputFileLocationArr4 = new TLRPC.InputFileLocation[]{tL_inputDocumentFileLocation};
                                    } else {
                                        inputFileLocationArr4 = inputFileLocationArr2;
                                    }
                                    inputFileLocationArr2 = inputFileLocationArr4;
                                } catch (Exception e3) {
                                    FileLog.m1136e(e3);
                                    fileReference = null;
                                }
                                if (fileReference == null) {
                                    zArr2 = zArr8;
                                    fileReference = getFileReference(tL_help_appUpdate.document, null, inputFileLocation, zArr2, inputFileLocationArr2);
                                } else {
                                    zArr2 = zArr8;
                                }
                                if (fileReference == null) {
                                    fileReference3 = getFileReference(tL_help_appUpdate.sticker, null, inputFileLocation, zArr2, inputFileLocationArr2);
                                    fileReference = fileReference3;
                                }
                            } else {
                                TLRPC.InputFileLocation inputFileLocation7 = inputFileLocation;
                                if (tLObject2 instanceof TLRPC.TL_messages_webPage) {
                                    TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject2;
                                    getMessagesController().putChats(tL_messages_webPage.chats, false);
                                    getMessagesController().putUsers(tL_messages_webPage.users, false);
                                    fileReference = getFileReference(tL_messages_webPage.webpage, inputFileLocation7, zArr8, inputFileLocationArr2);
                                } else if (tLObject2 instanceof TLRPC.WebPage) {
                                    fileReference = getFileReference((TLRPC.WebPage) tLObject2, inputFileLocation7, zArr8, inputFileLocationArr2);
                                } else if (tLObject2 instanceof TL_account.TL_wallPapers) {
                                    TL_account.TL_wallPapers tL_wallPapers = (TL_account.TL_wallPapers) tLObject2;
                                    int size5 = tL_wallPapers.wallpapers.size();
                                    int i9 = 0;
                                    while (i9 < size5) {
                                        fileReference2 = getFileReference(tL_wallPapers.wallpapers.get(i9).document, null, inputFileLocation7, zArr8, inputFileLocationArr2);
                                        if (fileReference2 != null) {
                                            fileReference = fileReference2;
                                            break;
                                        }
                                        i9++;
                                        inputFileLocation7 = inputFileLocation;
                                        fileReference = fileReference2;
                                    }
                                } else if (tLObject2 instanceof TLRPC.TL_wallPaper) {
                                    fileReference3 = getFileReference(((TLRPC.TL_wallPaper) tLObject2).document, null, inputFileLocation, zArr8, inputFileLocationArr2);
                                    fileReference = fileReference3;
                                } else if (tLObject2 instanceof TLRPC.TL_theme) {
                                    inputFileLocationArr3 = inputFileLocationArr2;
                                    fileReference = getFileReference(((TLRPC.TL_theme) tLObject2).document, null, inputFileLocation, zArr8, inputFileLocationArr2);
                                } else {
                                    TLRPC.InputFileLocation inputFileLocation8 = inputFileLocation;
                                    if (tLObject2 instanceof Vector) {
                                        Vector vector = (Vector) tLObject2;
                                        if (!vector.objects.isEmpty()) {
                                            int size6 = vector.objects.size();
                                            for (int i10 = 0; i10 < size6; i10++) {
                                                Object obj2 = vector.objects.get(i10);
                                                if (obj2 instanceof TLRPC.User) {
                                                    fileReference = getFileReference((TLRPC.User) obj2, inputFileLocation8, zArr8, inputFileLocationArr2);
                                                } else if (obj2 instanceof TLRPC.Chat) {
                                                    fileReference = getFileReference((TLRPC.Chat) obj2, inputFileLocation8, zArr8, inputFileLocationArr2);
                                                }
                                                if (fileReference != null) {
                                                    break;
                                                }
                                            }
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_messages_chats) {
                                        TLRPC.TL_messages_chats tL_messages_chats = (TLRPC.TL_messages_chats) tLObject2;
                                        if (!tL_messages_chats.chats.isEmpty()) {
                                            int size7 = tL_messages_chats.chats.size();
                                            for (int i11 = 0; i11 < size7; i11++) {
                                                fileReference = getFileReference((TLRPC.Chat) tL_messages_chats.chats.get(i11), inputFileLocation8, zArr8, inputFileLocationArr2);
                                                if (fileReference != null) {
                                                    break;
                                                }
                                            }
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_messages_savedGifs) {
                                        TLRPC.TL_messages_savedGifs tL_messages_savedGifs = (TLRPC.TL_messages_savedGifs) tLObject2;
                                        int size8 = tL_messages_savedGifs.gifs.size();
                                        int i12 = 0;
                                        while (i12 < size8) {
                                            fileReference2 = getFileReference((TLRPC.Document) tL_messages_savedGifs.gifs.get(i12), null, inputFileLocation8, zArr8, inputFileLocationArr2);
                                            if (fileReference2 != null) {
                                                fileReference = fileReference2;
                                                break;
                                            }
                                            i12++;
                                            inputFileLocation8 = inputFileLocation;
                                            fileReference = fileReference2;
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_messages_stickerSet) {
                                        TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject2;
                                        if (fileReference == null) {
                                            int size9 = tL_messages_stickerSet.documents.size();
                                            int i13 = 0;
                                            while (i13 < size9) {
                                                fileReference2 = getFileReference((TLRPC.Document) tL_messages_stickerSet.documents.get(i13), null, inputFileLocation, zArr8, inputFileLocationArr2);
                                                if (fileReference2 != null) {
                                                    fileReference = fileReference2;
                                                    break;
                                                }
                                                i13++;
                                                fileReference = fileReference2;
                                            }
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_messages_recentStickers) {
                                        TLRPC.TL_messages_recentStickers tL_messages_recentStickers = (TLRPC.TL_messages_recentStickers) tLObject2;
                                        int size10 = tL_messages_recentStickers.stickers.size();
                                        int i14 = 0;
                                        while (i14 < size10) {
                                            fileReference2 = getFileReference((TLRPC.Document) tL_messages_recentStickers.stickers.get(i14), null, inputFileLocation, zArr8, inputFileLocationArr2);
                                            if (fileReference2 != null) {
                                                fileReference = fileReference2;
                                                break;
                                            }
                                            i14++;
                                            fileReference = fileReference2;
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_messages_favedStickers) {
                                        TLRPC.TL_messages_favedStickers tL_messages_favedStickers = (TLRPC.TL_messages_favedStickers) tLObject2;
                                        int size11 = tL_messages_favedStickers.stickers.size();
                                        int i15 = 0;
                                        while (i15 < size11) {
                                            byte[] fileReference8 = getFileReference((TLRPC.Document) tL_messages_favedStickers.stickers.get(i15), null, inputFileLocation, zArr8, inputFileLocationArr2);
                                            if (fileReference8 != null) {
                                                fileReference = fileReference8;
                                                break;
                                            }
                                            i15++;
                                            fileReference = fileReference8;
                                        }
                                    } else {
                                        FileRefController fileRefController6 = this;
                                        if (tLObject2 instanceof TLRPC.photos_Photos) {
                                            TLRPC.photos_Photos photos_photos = (TLRPC.photos_Photos) tLObject2;
                                            int size12 = photos_photos.photos.size();
                                            for (int i16 = 0; i16 < size12; i16++) {
                                                fileReference = fileRefController6.getFileReference((TLRPC.Photo) photos_photos.photos.get(i16), inputFileLocation, zArr8, inputFileLocationArr2);
                                                if (fileReference != null) {
                                                    break;
                                                }
                                            }
                                        } else if (tLObject2 instanceof TL_stories.TL_stories_stories) {
                                            TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject2;
                                            if (tL_stories_stories.stories.isEmpty() || (messageMedia = (storyItem = tL_stories_stories.stories.get(0)).media) == null) {
                                                storyItem = null;
                                            } else {
                                                if (fileReference == null && (photo2 = messageMedia.photo) != null) {
                                                    fileReference = fileRefController6.getFileReference(photo2, inputFileLocation, zArr8, inputFileLocationArr2);
                                                }
                                                if (fileReference == null && (photo = storyItem.media.video_cover) != null) {
                                                    fileReference = fileRefController6.getFileReference(photo, inputFileLocation, zArr8, inputFileLocationArr2);
                                                }
                                                if (fileReference == null && (document = (messageMedia2 = storyItem.media).document) != null) {
                                                    byte[] fileReference9 = fileRefController6.getFileReference(document, messageMedia2.alt_documents, inputFileLocation, zArr8, inputFileLocationArr2);
                                                    fileRefController6 = fileRefController6;
                                                    fileReference = fileReference9;
                                                }
                                            }
                                            Object obj3 = objArr[1];
                                            if (obj3 instanceof FileLoadOperation) {
                                                Object obj4 = ((FileLoadOperation) obj3).parentObject;
                                                if (obj4 instanceof TL_stories.StoryItem) {
                                                    TL_stories.StoryItem storyItem2 = (TL_stories.StoryItem) obj4;
                                                    if (storyItem == null) {
                                                        TL_stories.TL_updateStory tL_updateStory = new TL_stories.TL_updateStory();
                                                        tL_updateStory.peer = fileRefController6.getMessagesController().getPeer(storyItem2.dialogId);
                                                        TL_stories.TL_storyItemDeleted tL_storyItemDeleted = new TL_stories.TL_storyItemDeleted();
                                                        tL_updateStory.story = tL_storyItemDeleted;
                                                        tL_storyItemDeleted.f1857id = storyItem2.f1857id;
                                                        ArrayList<TLRPC.Update> arrayList4 = new ArrayList<>();
                                                        arrayList4.add(tL_updateStory);
                                                        fileRefController6.getMessagesController().processUpdateArray(arrayList4, null, null, false, 0);
                                                    } else {
                                                        TLRPC.User user = fileRefController6.getMessagesController().getUser(Long.valueOf(storyItem2.dialogId));
                                                        if (user != null && user.contact) {
                                                            MessagesController.getInstance(fileRefController6.currentAccount).getStoriesController().getStoriesStorage().updateStoryItem(storyItem2.dialogId, storyItem);
                                                        }
                                                    }
                                                    if (storyItem != null && fileReference == null) {
                                                        TL_stories.TL_updateStory tL_updateStory2 = new TL_stories.TL_updateStory();
                                                        tL_updateStory2.peer = MessagesController.getInstance(fileRefController6.currentAccount).getPeer(storyItem2.dialogId);
                                                        tL_updateStory2.story = storyItem;
                                                        ArrayList<TLRPC.Update> arrayList5 = new ArrayList<>();
                                                        arrayList5.add(tL_updateStory2);
                                                        MessagesController.getInstance(fileRefController6.currentAccount).processUpdateArray(arrayList5, null, null, false, 0);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (fileReference == null) {
                        return null;
                    }
                    if (inputFileLocationArr3 != null && (inputFileLocation3 = inputFileLocationArr3[0]) != null) {
                        inputFileLocation4 = inputFileLocation3;
                    }
                    return new Pair<>(fileReference, inputFileLocation4);
                }
            }
            inputFileLocationArr3 = inputFileLocationArr2;
            if (fileReference == null) {
            }
        } else {
            tLObject2 = tLObject;
        }
        fileReference = null;
        if (!(tLObject2 instanceof StoriesController.BotPreview)) {
        }
        inputFileLocationArr3 = inputFileLocationArr2;
        if (fileReference == null) {
        }
    }

    private boolean updateFileReferenceFromCache(byte[] bArr, TLRPC.InputFileLocation inputFileLocation, TLRPC.InputFileLocation inputFileLocation2, String str, Object... objArr) {
        String strBytesToHex;
        Object obj = objArr[0];
        if (obj instanceof TL_stories.TL_storyItem) {
            ((TL_stories.TL_storyItem) obj).media.document.file_reference = bArr;
            return true;
        }
        if (obj instanceof TLRPC.TL_inputSingleMedia) {
            return false;
        }
        if (objArr.length >= 2) {
            Object obj2 = objArr[1];
            if ((obj2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && ((obj instanceof TLRPC.TL_inputMediaPhoto) || (obj instanceof TLRPC.TL_inputMediaDocument))) {
                return false;
            }
        }
        if (obj instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia = ((TLRPC.TL_messages_sendMedia) obj).media;
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                if (isSameReference(tL_inputMediaDocument.f1731id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument.f1731id.file_reference = bArr;
            } else if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = (TLRPC.TL_inputMediaPhoto) inputMedia;
                if (isSameReference(tL_inputMediaPhoto.f1733id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto.f1733id.file_reference = bArr;
            }
        } else if (obj instanceof TLRPC.TL_messages_editMessage) {
            TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_editMessage) obj).media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) inputMedia2;
                if (isSameReference(tL_inputMediaDocument2.f1731id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument2.f1731id.file_reference = bArr;
            } else if (inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto2 = (TLRPC.TL_inputMediaPhoto) inputMedia2;
                if (isSameReference(tL_inputMediaPhoto2.f1733id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto2.f1733id.file_reference = bArr;
            }
        } else if (obj instanceof TLRPC.TL_messages_saveGif) {
            TLRPC.TL_messages_saveGif tL_messages_saveGif = (TLRPC.TL_messages_saveGif) obj;
            if (isSameReference(tL_messages_saveGif.f1774id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveGif.f1774id.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_messages_saveRecentSticker) {
            TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = (TLRPC.TL_messages_saveRecentSticker) obj;
            if (isSameReference(tL_messages_saveRecentSticker.f1775id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveRecentSticker.f1775id.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_stickers_addStickerToSet) {
            TLRPC.TL_stickers_addStickerToSet tL_stickers_addStickerToSet = (TLRPC.TL_stickers_addStickerToSet) obj;
            if (isSameReference(tL_stickers_addStickerToSet.sticker.document.file_reference, bArr)) {
                return false;
            }
            tL_stickers_addStickerToSet.sticker.document.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_messages_faveSticker) {
            TLRPC.TL_messages_faveSticker tL_messages_faveSticker = (TLRPC.TL_messages_faveSticker) obj;
            if (isSameReference(tL_messages_faveSticker.f1754id.file_reference, bArr)) {
                return false;
            }
            tL_messages_faveSticker.f1754id.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_messages_getAttachedStickers) {
            TLRPC.InputStickeredMedia inputStickeredMedia = ((TLRPC.TL_messages_getAttachedStickers) obj).media;
            if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaDocument) {
                TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = (TLRPC.TL_inputStickeredMediaDocument) inputStickeredMedia;
                if (isSameReference(tL_inputStickeredMediaDocument.f1738id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaDocument.f1738id.file_reference = bArr;
            } else if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaPhoto) {
                TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = (TLRPC.TL_inputStickeredMediaPhoto) inputStickeredMedia;
                if (isSameReference(tL_inputStickeredMediaPhoto.f1739id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaPhoto.f1739id.file_reference = bArr;
            }
        } else {
            Object obj3 = objArr[1];
            if (obj3 instanceof FileLoadOperation) {
                FileLoadOperation fileLoadOperation = (FileLoadOperation) obj3;
                if (inputFileLocation != null) {
                    if (isSameReference(fileLoadOperation.location.file_reference, inputFileLocation.file_reference)) {
                        return false;
                    }
                    strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                    fileLoadOperation.location = inputFileLocation;
                    if (BuildVars.LOGS_ENABLED) {
                        strBytesToHex = Utilities.bytesToHex(inputFileLocation.file_reference);
                    }
                } else {
                    if (isSameReference(inputFileLocation2.file_reference, bArr)) {
                        return false;
                    }
                    String strBytesToHex2 = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                    TLRPC.InputFileLocation inputFileLocation3 = fileLoadOperation.location;
                    inputFileLocation2.file_reference = bArr;
                    inputFileLocation3.file_reference = bArr;
                    strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(bArr) : null;
                    strBytesToHex = strBytesToHex2;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("debug_loading: from fileref cache updated fileref from " + strBytesToHex + " to " + strBytesToHex);
                }
            }
        }
        return true;
    }

    private void cleanupCache() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastCleanupTime) < 600000) {
            return;
        }
        this.lastCleanupTime = SystemClock.elapsedRealtime();
        ArrayList arrayList = null;
        for (Map.Entry<String, CachedResult> entry : this.responseCache.entrySet()) {
            if (Math.abs(System.currentTimeMillis() - entry.getValue().firstQueryTime) >= RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(entry.getKey());
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.responseCache.remove(arrayList.get(i));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean applyCachedFileReference(Object obj, Object... objArr) {
        String str;
        Object[] objArr2;
        Pair<byte[], TLRPC.InputFileLocation> fileReferenceFromResponse;
        Pair<TLRPC.InputFileLocation, String> locationAndKey = getLocationAndKey(obj, objArr);
        if (locationAndKey == null) {
            return false;
        }
        TLRPC.InputFileLocation inputFileLocation = (TLRPC.InputFileLocation) locationAndKey.first;
        String str2 = (String) locationAndKey.second;
        String keyForParentObject = getKeyForParentObject(obj);
        if (keyForParentObject == null) {
            return false;
        }
        if (obj instanceof String) {
            String str3 = (String) obj;
            str = "wallpaper";
            if (!"wallpaper".equals(str3)) {
                str = "gif";
                if (!str3.startsWith("gif")) {
                    str = "recent";
                    if (!"recent".equals(str3)) {
                        str = "fav";
                        if (!"fav".equals(str3)) {
                            str = "update";
                            if (!"update".equals(str3)) {
                                str = str2;
                            }
                        }
                    }
                }
            }
        }
        CachedResult cachedResponse = getCachedResponse(str);
        if (cachedResponse != null) {
            objArr2 = objArr;
            Pair<byte[], TLRPC.InputFileLocation> fileReferenceFromResponse2 = getFileReferenceFromResponse(inputFileLocation, str2, keyForParentObject, cachedResponse.response, objArr2);
            if (fileReferenceFromResponse2 != null) {
                return updateFileReferenceFromCache((byte[]) fileReferenceFromResponse2.first, (TLRPC.InputFileLocation) fileReferenceFromResponse2.second, inputFileLocation, str2, objArr2);
            }
        } else {
            objArr2 = objArr;
        }
        CachedResult cachedResponse2 = getCachedResponse(keyForParentObject);
        if (cachedResponse2 == null || (fileReferenceFromResponse = getFileReferenceFromResponse(inputFileLocation, keyForParentObject, null, cachedResponse2.response, objArr2)) == null) {
            return false;
        }
        return updateFileReferenceFromCache((byte[]) fileReferenceFromResponse.first, (TLRPC.InputFileLocation) fileReferenceFromResponse.second, inputFileLocation, keyForParentObject, objArr2);
    }

    private CachedResult getCachedResponse(String str) {
        CachedResult cachedResult = this.responseCache.get(str);
        if (cachedResult == null || Math.abs(System.currentTimeMillis() - cachedResult.firstQueryTime) < RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS) {
            return cachedResult;
        }
        this.responseCache.remove(str);
        return null;
    }

    private void putReponseToCache(String str, TLObject tLObject) {
        if (this.responseCache.get(str) == null) {
            CachedResult cachedResult = new CachedResult();
            cachedResult.response = tLObject;
            cachedResult.firstQueryTime = System.currentTimeMillis();
            this.responseCache.put(str, cachedResult);
        }
    }

    private byte[] getFileReference(TLRPC.Document document, ArrayList<TLRPC.Document> arrayList, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        if (document != null && inputFileLocation != null) {
            int i = 0;
            if (!(inputFileLocation instanceof TLRPC.TL_inputDocumentFileLocation)) {
                int size = document.thumbs.size();
                for (int i2 = 0; i2 < size; i2++) {
                    TLRPC.PhotoSize photoSize = document.thumbs.get(i2);
                    byte[] fileReference = getFileReference(photoSize, inputFileLocation, zArr);
                    if (zArr != null && zArr[0]) {
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                        inputFileLocationArr[0] = tL_inputDocumentFileLocation;
                        tL_inputDocumentFileLocation.f1680id = document.f1668id;
                        tL_inputDocumentFileLocation.volume_id = inputFileLocation.volume_id;
                        tL_inputDocumentFileLocation.local_id = inputFileLocation.local_id;
                        tL_inputDocumentFileLocation.access_hash = document.access_hash;
                        byte[] bArr = document.file_reference;
                        tL_inputDocumentFileLocation.file_reference = bArr;
                        tL_inputDocumentFileLocation.thumb_size = photoSize.type;
                        return bArr;
                    }
                    if (fileReference != null) {
                        return fileReference;
                    }
                }
            } else if (document.f1668id == inputFileLocation.f1680id) {
                return document.file_reference;
            }
            if (arrayList != null) {
                while (i < arrayList.size()) {
                    TLRPC.InputFileLocation inputFileLocation2 = inputFileLocation;
                    boolean[] zArr2 = zArr;
                    TLRPC.InputFileLocation[] inputFileLocationArr2 = inputFileLocationArr;
                    byte[] fileReference2 = getFileReference(arrayList.get(i), null, inputFileLocation2, zArr2, inputFileLocationArr2);
                    if (fileReference2 != null) {
                        return fileReference2;
                    }
                    i++;
                    inputFileLocation = inputFileLocation2;
                    zArr = zArr2;
                    inputFileLocationArr = inputFileLocationArr2;
                }
            }
        }
        return null;
    }

    private boolean getPeerReferenceReplacement(TLRPC.User user, TLRPC.Chat chat, boolean z, TLRPC.InputFileLocation inputFileLocation, TLRPC.InputFileLocation[] inputFileLocationArr, boolean[] zArr) {
        TLRPC.InputPeer tL_inputPeerChat;
        TLRPC.InputPeer tL_inputPeerUser;
        if (zArr == null || !zArr[0]) {
            return false;
        }
        TLRPC.TL_inputPeerPhotoFileLocation tL_inputPeerPhotoFileLocation = new TLRPC.TL_inputPeerPhotoFileLocation();
        long j = inputFileLocation.volume_id;
        tL_inputPeerPhotoFileLocation.f1680id = j;
        tL_inputPeerPhotoFileLocation.volume_id = j;
        tL_inputPeerPhotoFileLocation.local_id = inputFileLocation.local_id;
        tL_inputPeerPhotoFileLocation.big = z;
        if (user != null) {
            tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
            tL_inputPeerUser.user_id = user.f1825id;
            tL_inputPeerUser.access_hash = user.access_hash;
            tL_inputPeerPhotoFileLocation.photo_id = user.photo.photo_id;
        } else {
            if (ChatObject.isChannel(chat)) {
                tL_inputPeerChat = new TLRPC.TL_inputPeerChannel();
                tL_inputPeerChat.channel_id = chat.f1660id;
                tL_inputPeerChat.access_hash = chat.access_hash;
            } else {
                tL_inputPeerChat = new TLRPC.TL_inputPeerChat();
                tL_inputPeerChat.chat_id = chat.f1660id;
            }
            tL_inputPeerPhotoFileLocation.photo_id = chat.photo.photo_id;
            tL_inputPeerUser = tL_inputPeerChat;
        }
        tL_inputPeerPhotoFileLocation.peer = tL_inputPeerUser;
        inputFileLocationArr[0] = tL_inputPeerPhotoFileLocation;
        return true;
    }

    private byte[] getFileReference(TLRPC.User user, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        TLRPC.UserProfilePhoto userProfilePhoto;
        if (user == null || (userProfilePhoto = user.photo) == null || !(inputFileLocation instanceof TLRPC.TL_inputFileLocation)) {
            return null;
        }
        byte[] fileReference = getFileReference(userProfilePhoto.photo_small, inputFileLocation, zArr);
        if (getPeerReferenceReplacement(user, null, false, inputFileLocation, inputFileLocationArr, zArr)) {
            return new byte[0];
        }
        if (fileReference == null) {
            return getPeerReferenceReplacement(user, null, true, inputFileLocation, inputFileLocationArr, zArr) ? new byte[0] : getFileReference(user.photo.photo_big, inputFileLocation, zArr);
        }
        return fileReference;
    }

    private byte[] getFileReference(TLRPC.Chat chat, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        TLRPC.ChatPhoto chatPhoto;
        if (chat == null || (chatPhoto = chat.photo) == null || !((inputFileLocation instanceof TLRPC.TL_inputFileLocation) || (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation))) {
            return null;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
            zArr[0] = true;
            if (getPeerReferenceReplacement(null, chat, false, inputFileLocation, inputFileLocationArr, zArr)) {
                return new byte[0];
            }
            return null;
        }
        byte[] fileReference = getFileReference(chatPhoto.photo_small, inputFileLocation, zArr);
        if (getPeerReferenceReplacement(null, chat, false, inputFileLocation, inputFileLocationArr, zArr)) {
            return new byte[0];
        }
        if (fileReference == null) {
            return getPeerReferenceReplacement(null, chat, true, inputFileLocation, inputFileLocationArr, zArr) ? new byte[0] : getFileReference(chat.photo.photo_big, inputFileLocation, zArr);
        }
        return fileReference;
    }

    private byte[] getFileReference(TLRPC.Photo photo, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        if (photo == null) {
            return null;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputPhotoFileLocation) {
            if (photo.f1692id == inputFileLocation.f1680id) {
                return photo.file_reference;
            }
            return null;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputFileLocation) {
            int size = photo.sizes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) photo.sizes.get(i);
                byte[] fileReference = getFileReference(photoSize, inputFileLocation, zArr);
                if (zArr != null && zArr[0]) {
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                    inputFileLocationArr[0] = tL_inputPhotoFileLocation;
                    tL_inputPhotoFileLocation.f1680id = photo.f1692id;
                    tL_inputPhotoFileLocation.volume_id = inputFileLocation.volume_id;
                    tL_inputPhotoFileLocation.local_id = inputFileLocation.local_id;
                    tL_inputPhotoFileLocation.access_hash = photo.access_hash;
                    byte[] bArr = photo.file_reference;
                    tL_inputPhotoFileLocation.file_reference = bArr;
                    tL_inputPhotoFileLocation.thumb_size = photoSize.type;
                    return bArr;
                }
                if (fileReference != null) {
                    return fileReference;
                }
            }
        }
        return null;
    }

    private byte[] getFileReference(TLRPC.PhotoSize photoSize, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr) {
        if (photoSize == null || !(inputFileLocation instanceof TLRPC.TL_inputFileLocation)) {
            return null;
        }
        return getFileReference(photoSize.location, inputFileLocation, zArr);
    }

    private byte[] getFileReference(TLRPC.FileLocation fileLocation, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr) {
        if (fileLocation == null || !(inputFileLocation instanceof TLRPC.TL_inputFileLocation) || fileLocation.local_id != inputFileLocation.local_id || fileLocation.volume_id != inputFileLocation.volume_id) {
            return null;
        }
        byte[] bArr = fileLocation.file_reference;
        if (bArr == null && zArr != null) {
            zArr[0] = true;
        }
        return bArr;
    }

    private byte[] getFileReference(TLRPC.WebPage webPage, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        FileRefController fileRefController = this;
        byte[] fileReference = fileRefController.getFileReference(webPage.document, null, inputFileLocation, zArr, inputFileLocationArr);
        if (fileReference != null) {
            return fileReference;
        }
        byte[] fileReference2 = getFileReference(webPage.photo, inputFileLocation, zArr, inputFileLocationArr);
        if (fileReference2 != null) {
            return fileReference2;
        }
        if (!webPage.attributes.isEmpty()) {
            int size = webPage.attributes.size();
            int i = 0;
            while (i < size) {
                TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) webPage.attributes.get(i);
                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeTheme) {
                    TLRPC.TL_webPageAttributeTheme tL_webPageAttributeTheme = (TLRPC.TL_webPageAttributeTheme) webPageAttribute;
                    int size2 = tL_webPageAttributeTheme.documents.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        byte[] fileReference3 = fileRefController.getFileReference((TLRPC.Document) tL_webPageAttributeTheme.documents.get(i2), null, inputFileLocation, zArr, inputFileLocationArr);
                        if (fileReference3 != null) {
                            return fileReference3;
                        }
                        i2++;
                        fileRefController = this;
                    }
                }
                i++;
                fileRefController = this;
            }
        }
        TLRPC.Page page = webPage.cached_page;
        if (page == null) {
            return null;
        }
        int size3 = page.documents.size();
        for (int i3 = 0; i3 < size3; i3++) {
            byte[] fileReference4 = getFileReference((TLRPC.Document) webPage.cached_page.documents.get(i3), null, inputFileLocation, zArr, inputFileLocationArr);
            if (fileReference4 != null) {
                return fileReference4;
            }
        }
        int size4 = webPage.cached_page.photos.size();
        for (int i4 = 0; i4 < size4; i4++) {
            byte[] fileReference5 = getFileReference((TLRPC.Photo) webPage.cached_page.photos.get(i4), inputFileLocation, zArr, inputFileLocationArr);
            if (fileReference5 != null) {
                return fileReference5;
            }
        }
        return null;
    }

    public static boolean isFileRefError(String str) {
        if ("FILEREF_EXPIRED".equals(str) || "FILE_REFERENCE_EXPIRED".equals(str) || "FILE_REFERENCE_EMPTY".equals(str)) {
            return true;
        }
        return str != null && str.startsWith("FILE_REFERENCE_");
    }

    public static int getFileRefErrorIndex(String str) {
        if (str != null && str.startsWith("FILE_REFERENCE_") && str.endsWith("_EXPIRED")) {
            try {
                return Integer.parseInt(str.substring(15, str.length() - 8));
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static boolean isFileRefErrorCover(String str) {
        return str != null && isFileRefError(str) && str.endsWith("COVER_EXPIRED");
    }
}
