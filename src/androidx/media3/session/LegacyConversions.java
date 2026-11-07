package androidx.media3.session;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.HeartRating;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PercentageRating;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.StarRating;
import androidx.media3.common.ThumbRating;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import androidx.media3.session.legacy.MediaMetadataCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.RatingCompat;
import androidx.mediarouter.media.MediaItemMetadata;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
abstract class LegacyConversions {
    public static final ImmutableSet<String> KNOWN_METADATA_COMPAT_KEYS = ImmutableSet.of(MediaItemMetadata.KEY_TITLE, MediaItemMetadata.KEY_ARTIST, MediaItemMetadata.KEY_DURATION, "android.media.metadata.ALBUM", MediaItemMetadata.KEY_AUTHOR, "android.media.metadata.WRITER", MediaItemMetadata.KEY_COMPOSER, "android.media.metadata.COMPILATION", "android.media.metadata.DATE", MediaItemMetadata.KEY_YEAR, "android.media.metadata.GENRE", MediaItemMetadata.KEY_TRACK_NUMBER, "android.media.metadata.NUM_TRACKS", MediaItemMetadata.KEY_DISC_NUMBER, MediaItemMetadata.KEY_ALBUM_ARTIST, "android.media.metadata.ART", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART", "android.media.metadata.ALBUM_ART_URI", "android.media.metadata.USER_RATING", "android.media.metadata.RATING", "android.media.metadata.DISPLAY_TITLE", "android.media.metadata.DISPLAY_SUBTITLE", "android.media.metadata.DISPLAY_DESCRIPTION", "android.media.metadata.DISPLAY_ICON", "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.MEDIA_ID", "android.media.metadata.MEDIA_URI", "android.media.metadata.BT_FOLDER_TYPE", "android.media.metadata.ADVERTISEMENT", "android.media.metadata.DOWNLOAD_STATUS", "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT");

    private static int convertToFolderType(long j) {
        if (j == 0) {
            return 0;
        }
        if (j == 1) {
            return 1;
        }
        if (j == 2) {
            return 2;
        }
        if (j == 3) {
            return 3;
        }
        if (j == 4) {
            return 4;
        }
        if (j == 5) {
            return 5;
        }
        return j == 6 ? 6 : 0;
    }

    public static int convertToLegacyErrorCode(int i) {
        if (i == -110) {
            return 8;
        }
        if (i == -109) {
            return 11;
        }
        if (i == -6) {
            return 2;
        }
        if (i == -2) {
            return 1;
        }
        if (i == 1) {
            return 10;
        }
        switch (i) {
            case -107:
                return 9;
            case -106:
                return 7;
            case -105:
                return 6;
            case -104:
                return 5;
            case -103:
                return 4;
            case -102:
                return 3;
            default:
                return 0;
        }
    }

    public static int convertToPlaybackStateCompatShuffleMode(boolean z) {
        return z ? 1 : 0;
    }

    public static long convertToQueueItemId(int i) {
        if (i == -1) {
            return -1L;
        }
        return i;
    }

    public static int convertToLegacyErrorCode(PlaybackException playbackException) {
        return convertToLegacyErrorCode(playbackException.errorCode);
    }

    public static MediaItem convertToMediaItem(MediaDescriptionCompat mediaDescriptionCompat) {
        Preconditions.checkNotNull(mediaDescriptionCompat);
        return convertToMediaItem(mediaDescriptionCompat, false, true);
    }

    private static MediaItem convertToMediaItem(MediaDescriptionCompat mediaDescriptionCompat, boolean z, boolean z2) {
        String mediaId = mediaDescriptionCompat.getMediaId();
        MediaItem.Builder builder = new MediaItem.Builder();
        if (mediaId == null) {
            mediaId = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return builder.setMediaId(mediaId).setRequestMetadata(new MediaItem.RequestMetadata.Builder().setMediaUri(mediaDescriptionCompat.getMediaUri()).build()).setMediaMetadata(convertToMediaMetadata(mediaDescriptionCompat, 0, z, z2)).build();
    }

    public static List<MediaItem> convertToMediaItemList(Timeline timeline) {
        ArrayList arrayList = new ArrayList();
        Timeline.Window window = new Timeline.Window();
        for (int i = 0; i < timeline.getWindowCount(); i++) {
            arrayList.add(timeline.getWindow(i, window).mediaItem);
        }
        return arrayList;
    }

    public static MediaSessionCompat.QueueItem convertToQueueItem(MediaItem mediaItem, int i, Bitmap bitmap) {
        return new MediaSessionCompat.QueueItem(convertToMediaDescriptionCompat(mediaItem, bitmap), convertToQueueItemId(i));
    }

    private static MediaMetadata convertToMediaMetadata(MediaDescriptionCompat mediaDescriptionCompat, int i, boolean z, boolean z2) {
        if (mediaDescriptionCompat == null) {
            return MediaMetadata.EMPTY;
        }
        MediaMetadata.Builder builder = new MediaMetadata.Builder();
        builder.setSubtitle(mediaDescriptionCompat.getSubtitle()).setDescription(mediaDescriptionCompat.getDescription()).setArtworkUri(mediaDescriptionCompat.getIconUri()).setUserRating(convertToRating(RatingCompat.newUnratedRating(i)));
        byte[] iconBitmapData = mediaDescriptionCompat.getIconBitmapData();
        if (iconBitmapData != null) {
            builder.setArtworkData(iconBitmapData, 3);
        }
        Bundle extras = mediaDescriptionCompat.getExtras();
        Bundle bundle = extras == null ? null : new Bundle(extras);
        if (bundle != null && bundle.containsKey("android.media.extra.BT_FOLDER_TYPE")) {
            builder.setFolderType(Integer.valueOf(convertToFolderType(bundle.getLong("android.media.extra.BT_FOLDER_TYPE"))));
            bundle.remove("android.media.extra.BT_FOLDER_TYPE");
        }
        builder.setIsBrowsable(Boolean.valueOf(z));
        if (bundle != null && bundle.containsKey("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT")) {
            builder.setMediaType(Integer.valueOf((int) bundle.getLong("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT")));
            bundle.remove("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT");
        }
        if (bundle != null && bundle.containsKey("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST")) {
            builder.setSupportedCommands(ImmutableList.copyOf((Collection) Preconditions.checkNotNull(bundle.getStringArrayList("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST"))));
        }
        if (bundle != null && bundle.containsKey("androidx.media3.mediadescriptioncompat.title")) {
            builder.setTitle(bundle.getCharSequence("androidx.media3.mediadescriptioncompat.title"));
            builder.setDisplayTitle(mediaDescriptionCompat.getTitle());
            bundle.remove("androidx.media3.mediadescriptioncompat.title");
        } else {
            builder.setTitle(mediaDescriptionCompat.getTitle());
        }
        if (bundle != null && !bundle.isEmpty()) {
            builder.setExtras(bundle);
        }
        builder.setIsPlayable(Boolean.valueOf(z2));
        return builder.build();
    }

    public static MediaMetadataCompat convertToMediaMetadataCompat(MediaMetadata mediaMetadata, String str, Uri uri, long j, Bitmap bitmap) {
        Long l;
        MediaMetadataCompat.Builder builderPutString = new MediaMetadataCompat.Builder().putString("android.media.metadata.MEDIA_ID", str);
        CharSequence charSequence = mediaMetadata.title;
        if (charSequence != null) {
            builderPutString.putText(MediaItemMetadata.KEY_TITLE, charSequence);
        }
        CharSequence charSequence2 = mediaMetadata.displayTitle;
        if (charSequence2 != null) {
            builderPutString.putText("android.media.metadata.DISPLAY_TITLE", charSequence2);
        }
        CharSequence charSequence3 = mediaMetadata.subtitle;
        if (charSequence3 != null) {
            builderPutString.putText("android.media.metadata.DISPLAY_SUBTITLE", charSequence3);
        }
        CharSequence charSequence4 = mediaMetadata.description;
        if (charSequence4 != null) {
            builderPutString.putText("android.media.metadata.DISPLAY_DESCRIPTION", charSequence4);
        }
        CharSequence charSequence5 = mediaMetadata.artist;
        if (charSequence5 != null) {
            builderPutString.putText(MediaItemMetadata.KEY_ARTIST, charSequence5);
        }
        CharSequence charSequence6 = mediaMetadata.albumTitle;
        if (charSequence6 != null) {
            builderPutString.putText("android.media.metadata.ALBUM", charSequence6);
        }
        CharSequence charSequence7 = mediaMetadata.albumArtist;
        if (charSequence7 != null) {
            builderPutString.putText(MediaItemMetadata.KEY_ALBUM_ARTIST, charSequence7);
        }
        if (mediaMetadata.recordingYear != null) {
            builderPutString.putLong(MediaItemMetadata.KEY_YEAR, r0.intValue());
        }
        CharSequence charSequence8 = mediaMetadata.author;
        if (charSequence8 != null) {
            builderPutString.putText(MediaItemMetadata.KEY_AUTHOR, charSequence8);
        }
        CharSequence charSequence9 = mediaMetadata.writer;
        if (charSequence9 != null) {
            builderPutString.putText("android.media.metadata.WRITER", charSequence9);
        }
        CharSequence charSequence10 = mediaMetadata.composer;
        if (charSequence10 != null) {
            builderPutString.putText(MediaItemMetadata.KEY_COMPOSER, charSequence10);
        }
        if (uri != null) {
            builderPutString.putString("android.media.metadata.MEDIA_URI", uri.toString());
        }
        Uri uri2 = mediaMetadata.artworkUri;
        if (uri2 != null) {
            builderPutString.putString("android.media.metadata.DISPLAY_ICON_URI", uri2.toString());
            builderPutString.putString("android.media.metadata.ALBUM_ART_URI", mediaMetadata.artworkUri.toString());
            builderPutString.putString("android.media.metadata.ART_URI", mediaMetadata.artworkUri.toString());
        }
        if (bitmap != null) {
            builderPutString.putBitmap("android.media.metadata.DISPLAY_ICON", bitmap);
            builderPutString.putBitmap("android.media.metadata.ALBUM_ART", bitmap);
        }
        Integer num = mediaMetadata.folderType;
        if (num != null && num.intValue() != -1) {
            builderPutString.putLong("android.media.metadata.BT_FOLDER_TYPE", convertToExtraBtFolderType(mediaMetadata.folderType.intValue()));
        }
        if (j == -9223372036854775807L && (l = mediaMetadata.durationMs) != null) {
            j = l.longValue();
        }
        if (j == -9223372036854775807L) {
            j = -1;
        }
        builderPutString.putLong(MediaItemMetadata.KEY_DURATION, j);
        RatingCompat ratingCompatConvertToRatingCompat = convertToRatingCompat(mediaMetadata.userRating);
        if (ratingCompatConvertToRatingCompat != null) {
            builderPutString.putRating("android.media.metadata.USER_RATING", ratingCompatConvertToRatingCompat);
        }
        RatingCompat ratingCompatConvertToRatingCompat2 = convertToRatingCompat(mediaMetadata.overallRating);
        if (ratingCompatConvertToRatingCompat2 != null) {
            builderPutString.putRating("android.media.metadata.RATING", ratingCompatConvertToRatingCompat2);
        }
        if (mediaMetadata.mediaType != null) {
            builderPutString.putLong("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT", r5.intValue());
        }
        Bundle bundle = mediaMetadata.extras;
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                Object obj = mediaMetadata.extras.get(str2);
                if (obj == null || (obj instanceof CharSequence)) {
                    builderPutString.putText(str2, (CharSequence) obj);
                } else if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long)) {
                    builderPutString.putLong(str2, ((Number) obj).longValue());
                }
            }
        }
        return builderPutString.build();
    }

    public static MediaDescriptionCompat convertToMediaDescriptionCompat(MediaItem mediaItem, Bitmap bitmap) {
        CharSequence charSequence;
        CharSequence charSequence2;
        MediaDescriptionCompat.Builder mediaId = new MediaDescriptionCompat.Builder().setMediaId(mediaItem.mediaId.equals(_UrlKt.FRAGMENT_ENCODE_SET) ? null : mediaItem.mediaId);
        MediaMetadata mediaMetadata = mediaItem.mediaMetadata;
        if (bitmap != null) {
            mediaId.setIconBitmap(bitmap);
        }
        Bundle bundle = mediaMetadata.extras;
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        Integer num = mediaMetadata.folderType;
        boolean z = (num == null || num.intValue() == -1) ? false : true;
        boolean z2 = mediaMetadata.mediaType != null;
        if (z || z2) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            if (z) {
                bundle.putLong("android.media.extra.BT_FOLDER_TYPE", convertToExtraBtFolderType(((Integer) Preconditions.checkNotNull(mediaMetadata.folderType)).intValue()));
            }
            if (z2) {
                bundle.putLong("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT", ((Integer) Preconditions.checkNotNull(mediaMetadata.mediaType)).intValue());
            }
        }
        if (!mediaMetadata.supportedCommands.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putStringArrayList("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST", new ArrayList<>(mediaMetadata.supportedCommands));
        }
        CharSequence charSequence3 = mediaMetadata.displayTitle;
        if (charSequence3 != null) {
            charSequence = mediaMetadata.subtitle;
            charSequence2 = mediaMetadata.description;
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putCharSequence("androidx.media3.mediadescriptioncompat.title", mediaMetadata.title);
        } else {
            CharSequence[] charSequenceArr = new CharSequence[3];
            int i = 0;
            int i2 = 0;
            while (i < 3) {
                String[] strArr = MediaMetadataCompat.PREFERRED_DESCRIPTION_ORDER;
                if (i2 >= strArr.length) {
                    break;
                }
                int i3 = i2 + 1;
                CharSequence text = getText(strArr[i2], mediaMetadata);
                if (!TextUtils.isEmpty(text)) {
                    charSequenceArr[i] = text;
                    i++;
                }
                i2 = i3;
            }
            charSequence3 = charSequenceArr[0];
            charSequence = charSequenceArr[1];
            charSequence2 = charSequenceArr[2];
        }
        return mediaId.setTitle(charSequence3).setSubtitle(charSequence).setDescription(charSequence2).setIconUri(mediaMetadata.artworkUri).setMediaUri(mediaItem.requestMetadata.mediaUri).setExtras(bundle).build();
    }

    private static CharSequence getText(String str, MediaMetadata mediaMetadata) {
        str.getClass();
        switch (str) {
            case "android.media.metadata.ARTIST":
                return mediaMetadata.artist;
            case "android.media.metadata.AUTHOR":
                return mediaMetadata.author;
            case "android.media.metadata.WRITER":
                return mediaMetadata.writer;
            case "android.media.metadata.DISPLAY_SUBTITLE":
                return mediaMetadata.subtitle;
            case "android.media.metadata.DISPLAY_DESCRIPTION":
                return mediaMetadata.description;
            case "android.media.metadata.COMPOSER":
                return mediaMetadata.composer;
            case "android.media.metadata.ALBUM":
                return mediaMetadata.albumTitle;
            case "android.media.metadata.TITLE":
                return mediaMetadata.title;
            case "android.media.metadata.ALBUM_ARTIST":
                return mediaMetadata.albumArtist;
            default:
                return null;
        }
    }

    private static long convertToExtraBtFolderType(int i) {
        switch (i) {
            case 0:
                return 0L;
            case 1:
                return 1L;
            case 2:
                return 2L;
            case 3:
                return 3L;
            case 4:
                return 4L;
            case 5:
                return 5L;
            case 6:
                return 6L;
            default:
                CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Unrecognized FolderType: ", i);
                return 0L;
        }
    }

    public static Rating convertToRating(RatingCompat ratingCompat) {
        if (ratingCompat == null) {
            return null;
        }
        switch (ratingCompat.getRatingStyle()) {
            case 1:
                if (!ratingCompat.isRated()) {
                }
                break;
            case 2:
                if (!ratingCompat.isRated()) {
                }
                break;
            case 3:
                if (!ratingCompat.isRated()) {
                }
                break;
            case 4:
                if (!ratingCompat.isRated()) {
                }
                break;
            case 5:
                if (!ratingCompat.isRated()) {
                }
                break;
            case 6:
                if (!ratingCompat.isRated()) {
                }
                break;
        }
        return null;
    }

    @SuppressLint({"WrongConstant"})
    public static RatingCompat convertToRatingCompat(Rating rating) {
        if (rating == null) {
            return null;
        }
        int ratingCompatStyle = getRatingCompatStyle(rating);
        if (!rating.isRated()) {
            return RatingCompat.newUnratedRating(ratingCompatStyle);
        }
        switch (ratingCompatStyle) {
            case 1:
                return RatingCompat.newHeartRating(((HeartRating) rating).isHeart());
            case 2:
                return RatingCompat.newThumbRating(((ThumbRating) rating).isThumbsUp());
            case 3:
            case 4:
            case 5:
                return RatingCompat.newStarRating(ratingCompatStyle, ((StarRating) rating).getStarRating());
            case 6:
                return RatingCompat.newPercentageRating(((PercentageRating) rating).getPercent());
            default:
                return null;
        }
    }

    public static int convertToPlaybackStateCompatState(Player player, boolean z) {
        if (player.getPlayerError() != null) {
            return 7;
        }
        int playbackState = player.getPlaybackState();
        if (playbackState == 1) {
            return 0;
        }
        if (playbackState == 2) {
            return z ? 2 : 6;
        }
        if (playbackState == 3) {
            return z ? 2 : 3;
        }
        if (playbackState == 4) {
            return 1;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Unrecognized State: ", playbackState);
        return 0;
    }

    public static int getRatingCompatStyle(Rating rating) {
        if (rating instanceof HeartRating) {
            return 1;
        }
        if (rating instanceof ThumbRating) {
            return 2;
        }
        if (!(rating instanceof StarRating)) {
            return rating instanceof PercentageRating ? 6 : 0;
        }
        int maxStars = ((StarRating) rating).getMaxStars();
        int i = 3;
        if (maxStars != 3) {
            i = 4;
            if (maxStars != 4) {
                i = 5;
                if (maxStars != 5) {
                    return 0;
                }
            }
        }
        return i;
    }

    public static int convertToRepeatMode(int i) {
        if (i == -1 || i == 0) {
            return 0;
        }
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 3) {
                Log.m164w("LegacyConversions", "Unrecognized PlaybackStateCompat.RepeatMode: " + i + " was converted to `Player.REPEAT_MODE_OFF`");
                return 0;
            }
        }
        return i2;
    }

    public static int convertToPlaybackStateCompatRepeatMode(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                Log.m164w("LegacyConversions", "Unrecognized RepeatMode: " + i + " was converted to `PlaybackStateCompat.REPEAT_MODE_NONE`");
                return 0;
            }
        }
        return i2;
    }

    public static boolean convertToShuffleModeEnabled(int i) {
        if (i == -1 || i == 0) {
            return false;
        }
        if (i == 1 || i == 2) {
            return true;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Unrecognized ShuffleMode: ", i);
        return false;
    }
}
