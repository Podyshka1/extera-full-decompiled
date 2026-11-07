package com.exteragram.messenger.api.db;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import com.exteragram.messenger.api.model.ProfileType;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 )2\u00020\u0001:\u0001)B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0096@¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0096@¢\u0006\u0002\u0010\u0011J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@¢\u0006\u0002\u0010\u0015J\u001c\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u000eH\u0096@¢\u0006\u0002\u0010\u000fJ \u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096@¢\u0006\u0002\u0010\u001cJ \u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096@¢\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010#\u001a\u00020&H\u0002J\u0010\u0010'\u001a\u00020$2\u0006\u0010#\u001a\u00020\"H\u0002J\u0010\u0010(\u001a\u00020&2\u0006\u0010#\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/exteragram/messenger/api/db/ProfileDao_Impl;", "Lcom/exteragram/messenger/api/db/ProfileDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfProfileDTO", "Landroidx/room/EntityInsertAdapter;", "Lcom/exteragram/messenger/api/dto/ProfileDTO;", "__converters", "Lcom/exteragram/messenger/api/db/Converters;", "insertAll", _UrlKt.FRAGMENT_ENCODE_SET, "profiles", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAll", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getById", "id", _UrlKt.FRAGMENT_ENCODE_SET, "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteProfiles", _UrlKt.FRAGMENT_ENCODE_SET, "ids", "updateNowPlaying", "newNowPlaying", "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;", "(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateBadge", "badge", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "(JLcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "__ProfileType_enumToString", _UrlKt.FRAGMENT_ENCODE_SET, "_value", "Lcom/exteragram/messenger/api/model/ProfileType;", "__ProfileStatus_enumToString", "Lcom/exteragram/messenger/api/model/ProfileStatus;", "__ProfileType_stringToEnum", "__ProfileStatus_stringToEnum", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nProfileDao_Impl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileDao_Impl.kt\ncom/exteragram/messenger/api/db/ProfileDao_Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,327:1\n1#2:328\n*E\n"})
public final class ProfileDao_Impl implements ProfileDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final Converters __converters = new Converters();
    private final EntityInsertAdapter<ProfileDTO> __insertAdapterOfProfileDTO = new EntityInsertAdapter<ProfileDTO>() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `ProfileDTO` (`id`,`type`,`status`,`badge`,`nowPlaying`,`deleted`,`canChangeBadge`,`number`) VALUES (?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, ProfileDTO entity) {
            statement.bindLong(1, entity.getId());
            statement.bindText(2, ProfileDao_Impl.this.__ProfileType_enumToString(entity.getType()));
            statement.bindText(3, ProfileDao_Impl.this.__ProfileStatus_enumToString(entity.getStatus()));
            String strFromBadgeDTO = ProfileDao_Impl.this.__converters.fromBadgeDTO(entity.getBadge());
            if (strFromBadgeDTO == null) {
                statement.bindNull(4);
            } else {
                statement.bindText(4, strFromBadgeDTO);
            }
            String strFromNowPlayingInfoDTO = ProfileDao_Impl.this.__converters.fromNowPlayingInfoDTO(entity.getNowPlaying());
            if (strFromNowPlayingInfoDTO == null) {
                statement.bindNull(5);
            } else {
                statement.bindText(5, strFromNowPlayingInfoDTO);
            }
            Boolean deleted = entity.getDeleted();
            if ((deleted != null ? Integer.valueOf(deleted.booleanValue() ? 1 : 0) : null) == null) {
                statement.bindNull(6);
            } else {
                statement.bindLong(6, r4.intValue());
            }
            Boolean canChangeBadge = entity.getCanChangeBadge();
            if ((canChangeBadge != null ? Integer.valueOf(canChangeBadge.booleanValue() ? 1 : 0) : null) == null) {
                statement.bindNull(7);
            } else {
                statement.bindLong(7, r0.intValue());
            }
            if (entity.getNumber() == null) {
                statement.bindNull(8);
            } else {
                statement.bindLong(8, r4.intValue());
            }
        }
    };

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ProfileType.values().length];
            try {
                iArr[ProfileType.USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProfileType.CHAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ProfileStatus.values().length];
            try {
                iArr2[ProfileStatus.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ProfileStatus.DEVELOPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ProfileStatus.SUPPORTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public ProfileDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // com.exteragram.messenger.api.db.ProfileDao
    public Object insertAll(final List<ProfileDTO> list, Continuation<? super Unit> continuation) {
        Object objPerformSuspending = DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileDao_Impl.$r8$lambda$Wij10QS9XusMpsHaps7cQDspT7Q(this.f$0, list, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    public static Unit $r8$lambda$Wij10QS9XusMpsHaps7cQDspT7Q(ProfileDao_Impl profileDao_Impl, List list, SQLiteConnection sQLiteConnection) throws Exception {
        profileDao_Impl.__insertAdapterOfProfileDTO.insert(sQLiteConnection, list);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.api.db.ProfileDao
    public Object getAll(Continuation<? super List<ProfileDTO>> continuation) {
        final String str = "SELECT * FROM ProfileDTO";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileDao_Impl.$r8$lambda$DUl6vDKn1QsJ1JOB_BR5bJxXCD0(str, this, (SQLiteConnection) obj);
            }
        }, continuation);
    }

    public static List $r8$lambda$DUl6vDKn1QsJ1JOB_BR5bJxXCD0(String str, ProfileDao_Impl profileDao_Impl, SQLiteConnection sQLiteConnection) {
        Boolean boolValueOf;
        long j;
        Integer numValueOf;
        Boolean boolValueOf2;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "type");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "status");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "badge");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "nowPlaying");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "deleted");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "canChangeBadge");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "number");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                ProfileType profileType__ProfileType_stringToEnum = profileDao_Impl.__ProfileType_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow2));
                ProfileStatus profileStatus__ProfileStatus_stringToEnum = profileDao_Impl.__ProfileStatus_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow3));
                BadgeDTO badgeDTO = profileDao_Impl.__converters.toBadgeDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4));
                NowPlayingInfoDTO nowPlayingInfoDTO = profileDao_Impl.__converters.toNowPlayingInfoDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5));
                Integer numValueOf2 = sQLiteStatementPrepare.isNull(columnIndexOrThrow6) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow6));
                if (numValueOf2 != null) {
                    boolValueOf = Boolean.valueOf(numValueOf2.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                if (sQLiteStatementPrepare.isNull(columnIndexOrThrow7)) {
                    j = j2;
                    numValueOf = null;
                } else {
                    j = j2;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow7));
                }
                if (numValueOf != null) {
                    boolValueOf2 = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf2 = null;
                }
                arrayList.add(new ProfileDTO(j, profileType__ProfileType_stringToEnum, profileStatus__ProfileStatus_stringToEnum, badgeDTO, nowPlayingInfoDTO, boolValueOf, boolValueOf2, sQLiteStatementPrepare.isNull(columnIndexOrThrow8) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow8))));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.db.ProfileDao
    public Object getById(final long j, Continuation<? super ProfileDTO> continuation) {
        final String str = "SELECT * FROM ProfileDTO WHERE id = ?";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileDao_Impl.$r8$lambda$swADWxB83sScUaHXuBzEBTL7aMI(str, j, this, (SQLiteConnection) obj);
            }
        }, continuation);
    }

    public static ProfileDTO $r8$lambda$swADWxB83sScUaHXuBzEBTL7aMI(String str, long j, ProfileDao_Impl profileDao_Impl, SQLiteConnection sQLiteConnection) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        boolean z = true;
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "type");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "status");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "badge");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "nowPlaying");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "deleted");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "canChangeBadge");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "number");
            ProfileDTO profileDTO = null;
            if (sQLiteStatementPrepare.step()) {
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                ProfileType profileType__ProfileType_stringToEnum = profileDao_Impl.__ProfileType_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow2));
                ProfileStatus profileStatus__ProfileStatus_stringToEnum = profileDao_Impl.__ProfileStatus_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow3));
                BadgeDTO badgeDTO = profileDao_Impl.__converters.toBadgeDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4));
                NowPlayingInfoDTO nowPlayingInfoDTO = profileDao_Impl.__converters.toNowPlayingInfoDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5));
                Integer numValueOf = sQLiteStatementPrepare.isNull(columnIndexOrThrow6) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow6));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                Integer numValueOf2 = sQLiteStatementPrepare.isNull(columnIndexOrThrow7) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow7));
                if (numValueOf2 != null) {
                    if (numValueOf2.intValue() == 0) {
                        z = false;
                    }
                    boolValueOf2 = Boolean.valueOf(z);
                } else {
                    boolValueOf2 = null;
                }
                profileDTO = new ProfileDTO(j2, profileType__ProfileType_stringToEnum, profileStatus__ProfileStatus_stringToEnum, badgeDTO, nowPlayingInfoDTO, boolValueOf, boolValueOf2, sQLiteStatementPrepare.isNull(columnIndexOrThrow8) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow8)));
            }
            sQLiteStatementPrepare.close();
            return profileDTO;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.db.ProfileDao
    public Object deleteProfiles(final List<Long> list, Continuation<? super Integer> continuation) {
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM ProfileDTO WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String string = sb.toString();
        return DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ProfileDao_Impl.$r8$lambda$j6f9cnJG2ThNHCJCgms70gjEkcM(string, list, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    public static int $r8$lambda$j6f9cnJG2ThNHCJCgms70gjEkcM(String str, List list, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i = 1;
            while (it.hasNext()) {
                sQLiteStatementPrepare.bindLong(i, ((Number) it.next()).longValue());
                i++;
            }
            sQLiteStatementPrepare.step();
            int totalChangedRows = SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
            sQLiteStatementPrepare.close();
            return totalChangedRows;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.db.ProfileDao
    public Object updateNowPlaying(final long j, final NowPlayingInfoDTO nowPlayingInfoDTO, Continuation<? super Integer> continuation) {
        final String str = "UPDATE ProfileDTO SET nowPlaying = ? WHERE id = ?";
        return DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ProfileDao_Impl.m2237$r8$lambda$FM395jIgYCpM8sj_PKKjfDXZ_Y(str, this, nowPlayingInfoDTO, j, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    /* JADX INFO: renamed from: $r8$lambda$FM395jIgYCp-M8sj_PKKjfDXZ_Y, reason: not valid java name */
    public static int m2237$r8$lambda$FM395jIgYCpM8sj_PKKjfDXZ_Y(String str, ProfileDao_Impl profileDao_Impl, NowPlayingInfoDTO nowPlayingInfoDTO, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            String strFromNowPlayingInfoDTO = profileDao_Impl.__converters.fromNowPlayingInfoDTO(nowPlayingInfoDTO);
            if (strFromNowPlayingInfoDTO == null) {
                sQLiteStatementPrepare.bindNull(1);
            } else {
                sQLiteStatementPrepare.bindText(1, strFromNowPlayingInfoDTO);
            }
            sQLiteStatementPrepare.bindLong(2, j);
            sQLiteStatementPrepare.step();
            int totalChangedRows = SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
            sQLiteStatementPrepare.close();
            return totalChangedRows;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.db.ProfileDao
    public Object updateBadge(final long j, final BadgeDTO badgeDTO, Continuation<? super Integer> continuation) {
        final String str = "UPDATE ProfileDTO SET badge = ? WHERE id = ?";
        return DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ProfileDao_Impl.$r8$lambda$2rPikLOPJnXPuTJs1oMdKpUjG0o(str, this, badgeDTO, j, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    public static int $r8$lambda$2rPikLOPJnXPuTJs1oMdKpUjG0o(String str, ProfileDao_Impl profileDao_Impl, BadgeDTO badgeDTO, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            String strFromBadgeDTO = profileDao_Impl.__converters.fromBadgeDTO(badgeDTO);
            if (strFromBadgeDTO == null) {
                sQLiteStatementPrepare.bindNull(1);
            } else {
                sQLiteStatementPrepare.bindText(1, strFromBadgeDTO);
            }
            sQLiteStatementPrepare.bindLong(2, j);
            sQLiteStatementPrepare.step();
            int totalChangedRows = SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
            sQLiteStatementPrepare.close();
            return totalChangedRows;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String __ProfileType_enumToString(ProfileType _value) {
        int i = WhenMappings.$EnumSwitchMapping$0[_value.ordinal()];
        if (i == 1) {
            return "USER";
        }
        if (i != 2) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
            return null;
        }
        return "CHAT";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String __ProfileStatus_enumToString(ProfileStatus _value) {
        int i = WhenMappings.$EnumSwitchMapping$1[_value.ordinal()];
        if (i == 1) {
            return PluginsConstants.Strategy.DEFAULT;
        }
        if (i == 2) {
            return "DEVELOPER";
        }
        if (i != 3) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
            return null;
        }
        return "SUPPORTER";
    }

    private final ProfileType __ProfileType_stringToEnum(String _value) {
        if (Intrinsics.areEqual(_value, "USER")) {
            return ProfileType.USER;
        }
        if (Intrinsics.areEqual(_value, "CHAT")) {
            return ProfileType.CHAT;
        }
        Native$$ExternalSyntheticBUOutline5.m517m("Can't convert value to enum, unknown value: ", _value);
        return null;
    }

    private final ProfileStatus __ProfileStatus_stringToEnum(String _value) {
        int iHashCode = _value.hashCode();
        if (iHashCode != -2032180703) {
            if (iHashCode != -1589053526) {
                if (iHashCode == -1528175460 && _value.equals("SUPPORTER")) {
                    return ProfileStatus.SUPPORTER;
                }
            } else if (_value.equals("DEVELOPER")) {
                return ProfileStatus.DEVELOPER;
            }
        } else if (_value.equals(PluginsConstants.Strategy.DEFAULT)) {
            return ProfileStatus.DEFAULT;
        }
        f$$ExternalSyntheticBUOutline1.m215m("Can't convert value to enum, unknown value: ".concat(_value));
        return null;
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
