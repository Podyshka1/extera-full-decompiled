package com.exteragram.messenger.icons;

import androidx.mediarouter.media.GlobalMediaRouter;
import com.exteragram.messenger.export.output.FileManager;
import com.exteragram.messenger.icons.IconPackStorageResult;
import com.google.android.gms.cast.MediaStatus;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_concurrentKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONException;
import org.json.JSONObject;
import org.simplifiles.SimpliFiles;
import org.simplifiles.archive.ArchiveFile;
import org.simplifiles.archive.ArchiveIssue;
import org.simplifiles.archive.ArchiveSaveOptions;
import org.simplifiles.archive.security.SecurityPolicy;
import org.simplifiles.exception.ArchiveValidationException;
import org.simplifiles.exception.CorruptedArchiveException;
import org.simplifiles.files.OverwritePolicy;
import org.simplifiles.files.SimpliDirectory;
import org.simplifiles.files.SimpliFile;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SaveToGallerySettingsHelper;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001UB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0086@¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u001e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001e2\u0006\u0010\u001d\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b\u001f\u0010 J\u001e\u0010!\u001a\b\u0012\u0004\u0012\u00020\t0\u001e2\u0006\u0010\u001d\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b!\u0010 J\u0017\u0010#\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b%\u0010$J/\u0010*\u001a\u00020\t2\u0006\u0010'\u001a\u00020&2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b*\u0010+J\u0019\u0010,\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\u0004H\u0002¢\u0006\u0004\b,\u0010-J\u001f\u0010/\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0004H\u0002¢\u0006\u0004\b/\u00100J\u0017\u00104\u001a\u0002032\u0006\u00102\u001a\u000201H\u0002¢\u0006\u0004\b4\u00105J\u001b\u00108\u001a\u0002032\n\u00102\u001a\u000606j\u0002`7H\u0002¢\u0006\u0004\b8\u00109J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u00020\u0007H\u0002¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020;H\u0002¢\u0006\u0004\b?\u0010@J\u0017\u0010A\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\bA\u0010\u001cJ\u000f\u0010B\u001a\u00020\u001aH\u0002¢\u0006\u0004\bB\u0010\u0003R$\u0010D\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER4\u0010H\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0Fj\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t`G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010J\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010M\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u0014\u0010S\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010T¨\u0006V"}, d2 = {"Lcom/exteragram/messenger/icons/IconPackStorage;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Ljava/io/File;", "getIconPacksDirectory", "()Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "packId", "Lcom/exteragram/messenger/icons/IconPack;", "findPackById", "(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;", "resourceName", "resolveIconFile", "(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;", "bundlePack", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "bundlePackBlocking", "(Ljava/lang/String;)Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "getCustomPacks", "()Ljava/util/List;", "iconPack", _UrlKt.FRAGMENT_ENCODE_SET, "saveIconPackMetadata", "(Lcom/exteragram/messenger/icons/IconPack;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "deletePack", "(Ljava/lang/String;)V", "file", "Lcom/exteragram/messenger/icons/IconPackStorageResult;", "installPack", "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "parsePackFromZip", "path", "isPlainFileName", "(Ljava/lang/String;)Z", "isValidPackId", "Lorg/json/JSONObject;", "jsonObject", "packRoot", "location", "parseMetadata", "(Lorg/json/JSONObject;Ljava/io/File;Ljava/io/File;)Lcom/exteragram/messenger/icons/IconPack;", "parseMetadataFile", "(Ljava/io/File;)Lcom/exteragram/messenger/icons/IconPack;", "targetDir", "extractPackArchive", "(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;", "Lorg/simplifiles/exception/ArchiveValidationException;", "e", "Lcom/exteragram/messenger/icons/IconPackStorageError;", "errorFromValidationException", "(Lorg/simplifiles/exception/ArchiveValidationException;)Lcom/exteragram/messenger/icons/IconPackStorageError;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorFromException", "(Ljava/lang/Exception;)Lcom/exteragram/messenger/icons/IconPackStorageError;", "prefix", "Lorg/simplifiles/files/SimpliDirectory;", "createTempCacheDirectory", "(Ljava/lang/String;)Lorg/simplifiles/files/SimpliDirectory;", "directory", "deleteDirectoryIfExists", "(Lorg/simplifiles/files/SimpliDirectory;)V", "invalidatePack", "invalidateAllPacks", _UrlKt.FRAGMENT_ENCODE_SET, "cachedCustomPacks", "Ljava/util/Map;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "cachedPacksById", "Ljava/util/HashMap;", "iconPacksDirectory", "Ljava/io/File;", "Lkotlin/text/Regex;", "resourceNameRegex", "Lkotlin/text/Regex;", "Lorg/simplifiles/archive/security/SecurityPolicy;", "iconPackArchivePolicy", "Lorg/simplifiles/archive/security/SecurityPolicy;", "Lorg/simplifiles/archive/ArchiveSaveOptions;", "iconPackArchiveSaveOptions", "Lorg/simplifiles/archive/ArchiveSaveOptions;", "IconPackStorageException", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIconPackStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconPackStorage.kt\ncom/exteragram/messenger/icons/IconPackStorage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,394:1\n1#2:395\n32#3,2:396\n14048#4,2:398\n1220#5,2:400\n1249#5,4:402\n*S KotlinDebug\n*F\n+ 1 IconPackStorage.kt\ncom/exteragram/messenger/icons/IconPackStorage\n*L\n95#1:396,2\n268#1:398,2\n275#1:400,2\n275#1:402,4\n*E\n"})
public final class IconPackStorage {
    private static Map<String, IconPack> cachedCustomPacks;
    private static volatile File iconPacksDirectory;
    public static final IconPackStorage INSTANCE = new IconPackStorage();
    private static final HashMap<String, IconPack> cachedPacksById = new HashMap<>();
    private static final Regex resourceNameRegex = new Regex("[A-Za-z0-9_]+");
    private static final SecurityPolicy iconPackArchivePolicy = SecurityPolicy.INSTANCE.builder().maxEntries(3000).maxTotalUncompressedSize(SaveToGallerySettingsHelper.DEFAULT_VIDEO_LIMIT).maxSingleFileSize(10485760).maxCompressionRatio(250.0d).build();
    private static final ArchiveSaveOptions iconPackArchiveSaveOptions = ArchiveSaveOptions.INSTANCE.builder().compressionLevel(0).build();

    private IconPackStorage() {
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/exteragram/messenger/icons/IconPackStorage$IconPackStorageException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Lcom/exteragram/messenger/icons/IconPackStorageError;", "<init>", "(Lcom/exteragram/messenger/icons/IconPackStorageError;)V", "getError", "()Lcom/exteragram/messenger/icons/IconPackStorageError;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class IconPackStorageException extends Exception {
        private final IconPackStorageError error;

        public IconPackStorageException(IconPackStorageError iconPackStorageError) {
            super(iconPackStorageError.name());
            this.error = iconPackStorageError;
        }

        public final IconPackStorageError getError() {
            return this.error;
        }
    }

    public final File getIconPacksDirectory() {
        File file = iconPacksDirectory;
        if (file != null) {
            return file;
        }
        File file2 = new File(ApplicationLoader.applicationContext.getFilesDir(), "icon_packs");
        SimpliFiles.directory(file2).create();
        iconPacksDirectory = file2;
        return file2;
    }

    private final boolean isPlainFileName(String path) {
        if (path.length() == 0 || Intrinsics.areEqual(path, ".") || Intrinsics.areEqual(path, "..")) {
            return false;
        }
        int length = path.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = path.charAt(i);
            if (cCharAt == 0 || cCharAt == '/' || cCharAt == '\\') {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isValidPackId(String packId) {
        return (StringsKt.isBlank(packId) || StringsKt.contains$default((CharSequence) packId, '/', false, 2, (Object) null) || StringsKt.contains$default((CharSequence) packId, '\\', false, 2, (Object) null) || Intrinsics.areEqual(packId, ".") || Intrinsics.areEqual(packId, "..")) ? false : true;
    }

    public static /* synthetic */ IconPack parseMetadata$default(IconPackStorage iconPackStorage, JSONObject jSONObject, File file, File file2, int i, Object obj) {
        if ((i & 2) != 0) {
            file = null;
        }
        if ((i & 4) != 0) {
            file2 = null;
        }
        return iconPackStorage.parseMetadata(jSONObject, file, file2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IconPack parseMetadata(JSONObject jsonObject, File packRoot, File location) throws JSONException {
        Iterator<String> itKeys;
        String string = jsonObject.getString("packName");
        String string2 = jsonObject.getString("packId");
        if (!isValidPackId(string2)) {
            throw new SecurityException("Invalid icon pack id: " + string2);
        }
        String strOptString = jsonObject.optString("author", "Unknown");
        String strOptString2 = jsonObject.optString("version", "1.0");
        JSONObject jSONObjectOptJSONObject = jsonObject.optJSONObject("icons");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        File canonicalFile = packRoot != null ? packRoot.getCanonicalFile() : null;
        if (jSONObjectOptJSONObject != null && (itKeys = jSONObjectOptJSONObject.keys()) != null) {
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string3 = jSONObjectOptJSONObject.getString(next);
                if (packRoot != null && canonicalFile != null) {
                    SimpliFiles.directory(packRoot).resolveInside(string3);
                    if (!INSTANCE.isPlainFileName(string3)) {
                        string3 = FilesKt.getInvariantSeparatorsPath(FilesKt.relativeTo(new File(packRoot, string3).getCanonicalFile(), canonicalFile));
                    }
                }
                linkedHashMap.put(next, string3);
            }
        }
        return new IconPack(string2, string, strOptString, strOptString2, linkedHashMap, null, location, 32, null);
    }

    private final IconPack parseMetadataFile(File file) {
        try {
            return parseMetadata$default(this, new JSONObject(SimpliFile.readText$default(SimpliFiles.file(file), MediaStatus.COMMAND_STREAM_TRANSFER, null, 2, null)), file.getParentFile(), null, 4, null);
        } catch (Exception e) {
            FileLog.m991e("Error parsing metadata.json", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObject extractPackArchive(File file, File targetDir) throws IconPackStorageException {
        ArchiveFile archiveFileFile = SimpliFiles.archive(file).withPolicy(iconPackArchivePolicy).extractTo(targetDir).file("metadata.json");
        if (!archiveFileFile.exists()) {
            FileLog.m990e("Icon pack archive does not contain metadata.json");
            throw new IconPackStorageException(IconPackStorageError.MISSING_METADATA);
        }
        if (archiveFileFile.getSize() > MediaStatus.COMMAND_STREAM_TRANSFER) {
            FileLog.m990e("Icon pack metadata.json is too large");
            throw new IconPackStorageException(IconPackStorageError.METADATA_TOO_LARGE);
        }
        return new JSONObject(ArchiveFile.readText$default(archiveFileFile, null, 1, null));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final IconPackStorageError errorFromValidationException(ArchiveValidationException e) {
        ArchiveIssue archiveIssue = (ArchiveIssue) CollectionsKt.firstOrNull((List) e.getReport().getIssues());
        String code = archiveIssue != null ? archiveIssue.getCode() : null;
        if (code != null) {
            switch (code.hashCode()) {
                case -1169710668:
                    if (code.equals("archive.entries.too_many")) {
                        return IconPackStorageError.TOO_MANY_FILES;
                    }
                    break;
                case -964476182:
                    if (code.equals("archive.total_size.too_large")) {
                        return IconPackStorageError.ARCHIVE_TOO_LARGE;
                    }
                    break;
                case 51248523:
                    if (code.equals("archive.entry.size.too_large")) {
                        return IconPackStorageError.FILE_TOO_LARGE;
                    }
                    break;
                case 1340485329:
                    if (code.equals("archive.entry.compression_ratio.too_high")) {
                        return IconPackStorageError.COMPRESSION_RATIO_TOO_HIGH;
                    }
                    break;
            }
        }
        return IconPackStorageError.INVALID_ARCHIVE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IconPackStorageError errorFromException(Exception e) {
        if (e instanceof IconPackStorageException) {
            return ((IconPackStorageException) e).getError();
        }
        if (e instanceof ArchiveValidationException) {
            return errorFromValidationException((ArchiveValidationException) e);
        }
        if (e instanceof CorruptedArchiveException) {
            return IconPackStorageError.INVALID_ARCHIVE;
        }
        if (!(e instanceof SecurityException) && !(e instanceof JSONException)) {
            return IconPackStorageError.UNKNOWN;
        }
        return IconPackStorageError.INVALID_METADATA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimpliDirectory createTempCacheDirectory(String prefix) {
        return SimpliFiles.directory(new File(ApplicationLoader.applicationContext.getCacheDir(), prefix + "_" + System.currentTimeMillis())).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteDirectoryIfExists(SimpliDirectory directory) throws Exception {
        if (directory.exists()) {
            directory.deleteRecursively();
        }
    }

    public final synchronized IconPack findPackById(String packId) {
        IconPack iconPack;
        IconPack metadataFile = null;
        if (!isValidPackId(packId)) {
            return null;
        }
        Map<String, IconPack> map = cachedCustomPacks;
        if (map != null && (iconPack = map.get(packId)) != null) {
            return iconPack;
        }
        HashMap<String, IconPack> map2 = cachedPacksById;
        if (map2.containsKey(packId)) {
            return map2.get(packId);
        }
        SimpliDirectory simpliDirectoryDirectory = SimpliFiles.directory(new File(getIconPacksDirectory(), packId));
        if (simpliDirectoryDirectory.exists()) {
            SimpliFile simpliFileFile = simpliDirectoryDirectory.file("metadata.json");
            if (simpliFileFile.exists()) {
                metadataFile = parseMetadataFile(simpliFileFile.getFile());
            }
        }
        map2.put(packId, metadataFile);
        return metadataFile;
    }

    private final void invalidatePack(String packId) {
        cachedCustomPacks = null;
        cachedPacksById.remove(packId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateAllPacks() {
        cachedCustomPacks = null;
        cachedPacksById.clear();
    }

    public final File resolveIconFile(String packId, String resourceName) {
        String str;
        if (isValidPackId(packId) && resourceNameRegex.matches(resourceName)) {
            try {
                IconPack iconPackFindPackById = findPackById(packId);
                if (iconPackFindPackById == null || (str = iconPackFindPackById.getIcons().get(resourceName)) == null) {
                    return null;
                }
                File canonicalFile = new File(getIconPacksDirectory(), packId).getCanonicalFile();
                File canonicalFile2 = new File(canonicalFile, str).getCanonicalFile();
                if (StringsKt.startsWith$default(canonicalFile2.getPath(), canonicalFile.getPath() + File.separator, false, 2, (Object) null)) {
                    if (canonicalFile2.isFile()) {
                        return canonicalFile2;
                    }
                }
                return null;
            } catch (Exception e) {
                FileLog.m991e("Failed to resolve icon file for pack " + packId, e);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconPackStorage$bundlePack$2 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconPackStorage$bundlePack$2", m873f = "IconPackStorage.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C13282 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {
        final /* synthetic */ String $packId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13282(String str, Continuation<? super C13282> continuation) {
            super(2, continuation);
            this.$packId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13282(this.$packId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super File> continuation) {
            return ((C13282) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IconPack iconPackFindPackById;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
            if (!iconPackStorage.isValidPackId(this.$packId) || (iconPackFindPackById = iconPackStorage.findPackById(this.$packId)) == null) {
                return null;
            }
            SimpliDirectory simpliDirectoryDirectory = SimpliFiles.directory(new File(iconPackStorage.getIconPacksDirectory(), this.$packId));
            if (!simpliDirectoryDirectory.exists()) {
                return null;
            }
            SimpliDirectory simpliDirectoryDirectory2 = SimpliFiles.directory(new File(ApplicationLoader.applicationContext.getCacheDir(), "shared_packs"));
            try {
                if (simpliDirectoryDirectory2.exists()) {
                    simpliDirectoryDirectory2.deleteRecursively();
                }
                simpliDirectoryDirectory2.create();
                return simpliDirectoryDirectory.zipTo(simpliDirectoryDirectory2.file(FileManager.fileNameFromUserString(iconPackFindPackById.getName()) + ".icons").getFile(), IconPackStorage.iconPackArchiveSaveOptions).getFile();
            } catch (Exception e) {
                FileLog.m991e("Failed to bundle pack: " + this.$packId, e);
                return null;
            }
        }
    }

    public final Object bundlePack(String str, Continuation<? super File> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13282(str, null), continuation);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconPackStorage$bundlePackBlocking$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconPackStorage$bundlePackBlocking$1", m873f = "IconPackStorage.kt", m874i = {}, m875l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_VOLUME_CHANGED}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C13291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {
        final /* synthetic */ String $packId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13291(String str, Continuation<? super C13291> continuation) {
            super(2, continuation);
            this.$packId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13291(this.$packId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super File> continuation) {
            return ((C13291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
            String str = this.$packId;
            this.label = 1;
            Object objBundlePack = iconPackStorage.bundlePack(str, this);
            return objBundlePack == coroutine_suspended ? coroutine_suspended : objBundlePack;
        }
    }

    public final File bundlePackBlocking(String packId) {
        return (File) BuildersKt__Builders_concurrentKt.runBlockingK$default(null, new C13291(packId, null), 1, null);
    }

    public final synchronized List<IconPack> getCustomPacks() {
        IconPack metadataFile;
        Collection<IconPack> collectionValues;
        Map<String, IconPack> map = cachedCustomPacks;
        if (map != null && (collectionValues = map.values()) != null) {
            return new ArrayList(collectionValues);
        }
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = getIconPacksDirectory().listFiles();
        int i = 0;
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                SimpliFile simpliFileFile = SimpliFiles.directory(file).file("metadata.json");
                if (simpliFileFile.exists() && (metadataFile = INSTANCE.parseMetadataFile(simpliFileFile.getFile())) != null) {
                    arrayList.add(metadataFile);
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList, 10)), 16));
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            linkedHashMap.put(((IconPack) obj).getId(), obj);
        }
        cachedCustomPacks = linkedHashMap;
        cachedPacksById.clear();
        return arrayList;
    }

    public final synchronized boolean saveIconPackMetadata(IconPack iconPack) {
        if (!isValidPackId(iconPack.getId())) {
            FileLog.m990e("Invalid icon pack id: " + iconPack.getId());
            return false;
        }
        try {
            SimpliFile simpliFileFile = SimpliFiles.directory(new File(getIconPacksDirectory(), iconPack.getId())).create().file("metadata.json");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("schemaVersion", 1);
            jSONObject.put("packName", iconPack.getName());
            jSONObject.put("packId", iconPack.getId());
            jSONObject.put("author", iconPack.getAuthor());
            jSONObject.put("version", iconPack.getVersion());
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, String> entry : iconPack.getIcons().entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue());
            }
            jSONObject.put("icons", jSONObject2);
            SimpliFile.writeTextAtomic$default(simpliFileFile, jSONObject.toString(4), null, 2, null);
            invalidatePack(iconPack.getId());
            return true;
        } catch (Exception e) {
            FileLog.m991e("Error saving metadata", e);
            return false;
        }
    }

    public final synchronized void deletePack(String packId) {
        if (isValidPackId(packId)) {
            SimpliDirectory simpliDirectoryDirectory = SimpliFiles.directory(new File(getIconPacksDirectory(), packId));
            if (simpliDirectoryDirectory.exists()) {
                deleteDirectoryIfExists(simpliDirectoryDirectory);
                invalidatePack(packId);
            }
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconPackStorage$installPack$2 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/exteragram/messenger/icons/IconPackStorageResult;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconPackStorage$installPack$2", m873f = "IconPackStorage.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    @SourceDebugExtension({"SMAP\nIconPackStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconPackStorage.kt\ncom/exteragram/messenger/icons/IconPackStorage$installPack$2\n+ 2 IconPackStorage.kt\ncom/exteragram/messenger/icons/IconPackStorage\n*L\n1#1,394:1\n177#2,6:395\n*S KotlinDebug\n*F\n+ 1 IconPackStorage.kt\ncom/exteragram/messenger/icons/IconPackStorage$installPack$2\n*L\n323#1:395,6\n*E\n"})
    public static final class C13302 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super IconPackStorageResult<? extends Unit>>, Object> {
        final /* synthetic */ File $file;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13302(File file, Continuation<? super C13302> continuation) {
            super(2, continuation);
            this.$file = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C13302 c13302 = new C13302(this.$file, continuation);
            c13302.L$0 = obj;
            return c13302;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super IconPackStorageResult<? extends Unit>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super IconPackStorageResult<Unit>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super IconPackStorageResult<Unit>> continuation) {
            return ((C13302) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00ee A[Catch: all -> 0x0094, TryCatch #3 {all -> 0x0094, blocks: (B:6:0x0018, B:12:0x007f, B:14:0x0085, B:16:0x008b, B:24:0x00b0, B:30:0x00cc, B:32:0x00d2, B:34:0x00d8, B:36:0x00de, B:37:0x00e1, B:38:0x00e6, B:39:0x00ee, B:41:0x00f4, B:42:0x00f7, B:43:0x00f9, B:45:0x00fd, B:46:0x00fe, B:50:0x010a, B:51:0x010b, B:29:0x00c2, B:23:0x00a6, B:11:0x0075, B:26:0x00b6, B:8:0x0067, B:20:0x0098, B:44:0x00fa), top: B:66:0x0018, outer: #7, inners: #1, #2, #4, #5 }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            IconPackStorageResult.Failure failure;
            Object objM3087constructorimpl;
            Object objM3087constructorimpl2;
            Object failure2;
            Object objM3087constructorimpl3;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            try {
                IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
                File file = this.$file;
                SimpliDirectory simpliDirectoryCreateTempCacheDirectory = iconPackStorage.createTempCacheDirectory("install");
                try {
                    String id = IconPackStorage.parseMetadata$default(iconPackStorage, iconPackStorage.extractPackArchive(file, simpliDirectoryCreateTempCacheDirectory.getFile()), simpliDirectoryCreateTempCacheDirectory.getFile(), null, 4, null).getId();
                    File file2 = new File(iconPackStorage.getIconPacksDirectory(), id);
                    File file3 = new File(iconPackStorage.getIconPacksDirectory(), id + "_trash_" + System.currentTimeMillis());
                    SimpliDirectory simpliDirectoryDirectory = SimpliFiles.directory(file2);
                    SimpliDirectory simpliDirectoryDirectory2 = SimpliFiles.directory(file3);
                    if (simpliDirectoryDirectory.exists()) {
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            objM3087constructorimpl3 = Result.m3087constructorimpl(simpliDirectoryDirectory.moveTo(file3, OverwritePolicy.ERROR));
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM3087constructorimpl3 = Result.m3087constructorimpl(ResultKt.createFailure(th));
                        }
                        if (Result.m3090exceptionOrNullimpl(objM3087constructorimpl3) != null && !simpliDirectoryDirectory.deleteRecursively()) {
                            failure2 = new IconPackStorageResult.Failure(IconPackStorageError.STORAGE_ERROR);
                        } else {
                            try {
                                Result.Companion companion3 = Result.INSTANCE;
                                objM3087constructorimpl = Result.m3087constructorimpl(simpliDirectoryCreateTempCacheDirectory.moveTo(file2, OverwritePolicy.ERROR));
                            } catch (Throwable th2) {
                                Result.Companion companion4 = Result.INSTANCE;
                                objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th2));
                            }
                            if (Result.m3090exceptionOrNullimpl(objM3087constructorimpl) != null) {
                                try {
                                    objM3087constructorimpl2 = Result.m3087constructorimpl(simpliDirectoryCreateTempCacheDirectory.copyTo(file2, OverwritePolicy.ERROR));
                                } catch (Throwable th3) {
                                    Result.Companion companion5 = Result.INSTANCE;
                                    objM3087constructorimpl2 = Result.m3087constructorimpl(ResultKt.createFailure(th3));
                                }
                                if (Result.m3090exceptionOrNullimpl(objM3087constructorimpl2) != null) {
                                    if (simpliDirectoryDirectory2.exists()) {
                                        if (simpliDirectoryDirectory.exists()) {
                                            simpliDirectoryDirectory.deleteRecursively();
                                        }
                                        simpliDirectoryDirectory2.moveTo(file2, OverwritePolicy.ERROR);
                                    }
                                    failure2 = new IconPackStorageResult.Failure(IconPackStorageError.STORAGE_ERROR);
                                } else {
                                    if (simpliDirectoryDirectory2.exists()) {
                                        simpliDirectoryDirectory2.deleteRecursively();
                                    }
                                    IconPackStorage iconPackStorage2 = IconPackStorage.INSTANCE;
                                    synchronized (iconPackStorage2) {
                                        iconPackStorage2.invalidateAllPacks();
                                    }
                                    failure2 = new IconPackStorageResult.Success(Unit.INSTANCE);
                                }
                            }
                        }
                    }
                    iconPackStorage.deleteDirectoryIfExists(simpliDirectoryCreateTempCacheDirectory);
                    return failure2;
                } catch (Throwable th4) {
                    iconPackStorage.deleteDirectoryIfExists(simpliDirectoryCreateTempCacheDirectory);
                    throw th4;
                }
            } catch (IconPackStorageException e) {
                FileLog.m990e("Pack installation failed: " + e.getError());
                failure = new IconPackStorageResult.Failure(e.getError());
                return failure;
            } catch (Exception e2) {
                FileLog.m991e("Pack installation failed", e2);
                failure = new IconPackStorageResult.Failure(IconPackStorage.INSTANCE.errorFromException(e2));
                return failure;
            }
        }
    }

    public final Object installPack(File file, Continuation<? super IconPackStorageResult<Unit>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13302(file, null), continuation);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconPackStorage$parsePackFromZip$2 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/exteragram/messenger/icons/IconPackStorageResult;", "Lcom/exteragram/messenger/icons/IconPack;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconPackStorage$parsePackFromZip$2", m873f = "IconPackStorage.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C13312 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super IconPackStorageResult<? extends IconPack>>, Object> {
        final /* synthetic */ File $file;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13312(File file, Continuation<? super C13312> continuation) {
            super(2, continuation);
            this.$file = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13312(this.$file, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super IconPackStorageResult<? extends IconPack>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super IconPackStorageResult<IconPack>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super IconPackStorageResult<IconPack>> continuation) {
            return ((C13312) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
            SimpliDirectory simpliDirectoryCreateTempCacheDirectory = iconPackStorage.createTempCacheDirectory("preview");
            try {
                return new IconPackStorageResult.Success(iconPackStorage.parseMetadata(iconPackStorage.extractPackArchive(this.$file, simpliDirectoryCreateTempCacheDirectory.getFile()), simpliDirectoryCreateTempCacheDirectory.getFile(), simpliDirectoryCreateTempCacheDirectory.getFile()));
            } catch (IconPackStorageException e) {
                FileLog.m990e("Failed to parse pack for preview: " + e.getError());
                IconPackStorage.INSTANCE.deleteDirectoryIfExists(simpliDirectoryCreateTempCacheDirectory);
                return new IconPackStorageResult.Failure(e.getError());
            } catch (Exception e2) {
                FileLog.m991e("Failed to parse pack for preview", e2);
                IconPackStorage iconPackStorage2 = IconPackStorage.INSTANCE;
                iconPackStorage2.deleteDirectoryIfExists(simpliDirectoryCreateTempCacheDirectory);
                return new IconPackStorageResult.Failure(iconPackStorage2.errorFromException(e2));
            }
        }
    }

    public final Object parsePackFromZip(File file, Continuation<? super IconPackStorageResult<IconPack>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13312(file, null), continuation);
    }
}
