package com.exteragram.messenger.player;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.exteragram.messenger.player.motion.ArtworkRepository;
import java.util.ArrayList;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PlayerCovers {
    private static TLRPC.PhotoSize getDocumentThumb(MessageObject messageObject, int i) {
        TLRPC.Document document = messageObject.getDocument();
        TLRPC.PhotoSize closestPhotoSizeWithSize = document != null ? FileLoader.getClosestPhotoSizeWithSize(document.thumbs, i) : null;
        if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoSizeProgressive)) {
            return closestPhotoSizeWithSize;
        }
        return null;
    }

    private static ImageLocation getDocumentThumbLocation(MessageObject messageObject, int i) {
        TLRPC.PhotoSize documentThumb = getDocumentThumb(messageObject, i);
        if (documentThumb != null) {
            return ImageLocation.getForDocument(documentThumb, messageObject.getDocument());
        }
        return null;
    }

    public static boolean needsArtwork(MessageObject messageObject) {
        if (messageObject == null || messageObject.isVoice() || messageObject.isRoundVideo()) {
            return false;
        }
        AudioInfo playingAudioInfo = getPlayingAudioInfo(messageObject);
        Bitmap cover = playingAudioInfo != null ? playingAudioInfo.getCover() : null;
        if (cover != null) {
            return Math.max(cover.getWidth(), cover.getHeight()) < 640;
        }
        TLRPC.PhotoSize documentThumb = getDocumentThumb(messageObject, 1280);
        return documentThumb == null || Math.max(documentThumb.f1019w, documentThumb.f1018h) < 640;
    }

    public static ImageLocation getThumbLocation(MessageObject messageObject) {
        ImageLocation documentThumbLocation = getDocumentThumbLocation(messageObject, 360);
        if (documentThumbLocation != null) {
            return documentThumbLocation;
        }
        String artworkUrl = messageObject.getArtworkUrl(true);
        if (artworkUrl != null) {
            return ImageLocation.getForPath(artworkUrl);
        }
        return null;
    }

    public static AudioInfo getPlayingAudioInfo(MessageObject messageObject) {
        MediaController mediaController = MediaController.getInstance();
        MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
        if (playingMessageObject == null || messageObject == null || playingMessageObject.getId() != messageObject.getId() || playingMessageObject.getDialogId() != messageObject.getDialogId()) {
            return null;
        }
        return mediaController.getAudioInfo();
    }

    public static boolean hasCover(MessageObject messageObject) {
        if (messageObject == null) {
            return false;
        }
        AudioInfo playingAudioInfo = getPlayingAudioInfo(messageObject);
        return ((playingAudioInfo == null || playingAudioInfo.getCover() == null) && TextUtils.isEmpty(messageObject.getArtworkUrl(false)) && getThumbLocation(messageObject) == null) ? false : true;
    }

    public static boolean setCover(ImageReceiver imageReceiver, MessageObject messageObject, int i, boolean z) {
        if (messageObject == null) {
            clearCover(imageReceiver);
            return false;
        }
        AudioInfo playingAudioInfo = getPlayingAudioInfo(messageObject);
        String str = i + "_" + i;
        String cached = (z && needsArtwork(messageObject)) ? ArtworkRepository.getCached(TrackQuery.forMessage(messageObject)) : null;
        if (cached != null) {
            if (playingAudioInfo != null && playingAudioInfo.getCover() != null) {
                imageReceiver.setImage(ImageLocation.getForPath(cached), str, new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), playingAudioInfo.getCover()), null, messageObject, 1);
            } else {
                ImageLocation documentThumbLocation = getDocumentThumbLocation(messageObject, 1280);
                ImageLocation forPath = ImageLocation.getForPath(cached);
                if (documentThumbLocation == null) {
                    documentThumbLocation = getThumbLocation(messageObject);
                }
                imageReceiver.setImage(forPath, str, documentThumbLocation, str, 0L, null, messageObject, 1);
            }
            return true;
        }
        if (playingAudioInfo != null && playingAudioInfo.getCover() != null) {
            imageReceiver.setImageBitmap((z || playingAudioInfo.getSmallCover() == null) ? playingAudioInfo.getCover() : playingAudioInfo.getSmallCover());
            return true;
        }
        String artworkUrl = null;
        ImageLocation thumbLocation = getThumbLocation(messageObject);
        ImageLocation documentThumbLocation2 = z ? getDocumentThumbLocation(messageObject, 1280) : null;
        if (documentThumbLocation2 != null) {
            imageReceiver.setImage(documentThumbLocation2, str, thumbLocation, str, 0L, null, messageObject, 1);
            return true;
        }
        if (z) {
            artworkUrl = messageObject.getArtworkUrl(false);
        }
        if (!TextUtils.isEmpty(artworkUrl)) {
            imageReceiver.setImage(ImageLocation.getForPath(artworkUrl), str, thumbLocation, str, 0L, null, messageObject, 1);
            return true;
        }
        if (thumbLocation != null) {
            imageReceiver.setImage(thumbLocation, str, null, null, 0L, null, messageObject, 1);
            return true;
        }
        clearCover(imageReceiver);
        return false;
    }

    private static void clearCover(ImageReceiver imageReceiver) {
        imageReceiver.setImageBitmap((Bitmap) null);
    }

    public static void preloadNeighbors(final int i) {
        forEachNeighbor(new Utilities.Callback() { // from class: com.exteragram.messenger.player.PlayerCovers$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PlayerCovers.preload(i, (MessageObject) obj);
            }
        });
    }

    public static void onFileLoaded(final String str) {
        forEachNeighbor(new Utilities.Callback() { // from class: com.exteragram.messenger.player.PlayerCovers$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PlayerCovers.$r8$lambda$MSk4fsxnLqO4KIlWzE4ly0Bcoak(str, (MessageObject) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$MSk4fsxnLqO4KIlWzE4ly0Bcoak(String str, MessageObject messageObject) {
        if (str.equals(FileLoader.getAttachFileName(messageObject.getDocument()))) {
            AudioInfoCache.preload(messageObject);
        }
    }

    private static void forEachNeighbor(Utilities.Callback<MessageObject> callback) {
        int playingMessageObjectNum;
        MediaController mediaController = MediaController.getInstance();
        ArrayList<MessageObject> playlist = mediaController.getPlaylist();
        if (playlist.size() > 1 && (playingMessageObjectNum = mediaController.getPlayingMessageObjectNum()) >= 0 && playingMessageObjectNum < playlist.size()) {
            int size = (playingMessageObjectNum + 1) % playlist.size();
            int size2 = ((playingMessageObjectNum - 1) + playlist.size()) % playlist.size();
            callback.run(playlist.get(size));
            if (size2 != size) {
                callback.run(playlist.get(size2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void preload(int i, MessageObject messageObject) {
        if (messageObject == null) {
            return;
        }
        AudioInfoCache.preload(messageObject);
        ImageLocation thumbLocation = getThumbLocation(messageObject);
        if (thumbLocation == null) {
            return;
        }
        if (thumbLocation.path != null) {
            ImageLoader.getInstance().preloadArtwork(thumbLocation.path);
        } else {
            FileLoader.getInstance(i).loadFile(thumbLocation, messageObject, null, 0, 1);
        }
    }

    public static TLObject getVoicePeer(MessageObject messageObject) {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        int i = messageObject.currentAccount;
        MessagesController messagesController = MessagesController.getInstance(i);
        TLRPC.Message message = messageObject.messageOwner;
        if (messageObject.isOutOwner()) {
            return UserConfig.getInstance(i).getCurrentUser();
        }
        long peerDialogId = (message == null || (messageFwdHeader = message.fwd_from) == null || (peer = messageFwdHeader.from_id) == null) ? 0L : DialogObject.getPeerDialogId(peer);
        if (peerDialogId == 0) {
            peerDialogId = messageObject.getFromChatId();
        }
        if (peerDialogId == 0) {
            peerDialogId = messageObject.getDialogId();
        }
        return peerDialogId > 0 ? messagesController.getUser(Long.valueOf(peerDialogId)) : messagesController.getChat(Long.valueOf(-peerDialogId));
    }
}
