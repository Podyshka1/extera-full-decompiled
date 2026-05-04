.class public final Lcom/google/android/gms/measurement/internal/zzat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzav;

.field private final zzb:Ljava/lang/String;

.field private zzc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzc:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;J)V
    .locals 2

    .line 3
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 v0, -0x1

    .line 6
    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzah(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzc:J

    .line 2
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v7, "app_id = ? and rowid > ?"

    const-string v12, "1000"

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "raw_events"

    const-string v13, "rowid"

    const-string v14, "name"

    const-string v15, "timestamp"

    const-string v16, "metadata_fingerprint"

    const-string v17, "data"

    const-string v18, "realtime"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v6

    const-string v11, "rowid"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v4, 0x3

    .line 7
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v4, 0x5

    .line 8
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v4, v9, v11

    const/4 v9, 0x1

    if-nez v4, :cond_1

    move v0, v9

    :cond_1
    const/4 v4, 0x4

    .line 9
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzc:J

    cmp-long v10, v5, v10

    if-lez v10, :cond_2

    iput-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzc:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    .line 10
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhs;->zzk()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhr;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, ""

    .line 15
    :cond_3
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzhr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhr;

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhr;->zzo(J)Lcom/google/android/gms/internal/measurement/zzhr;

    move-object v9, v4

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    .line 16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzhs;

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(JJZLcom/google/android/gms/internal/measurement/zzhs;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 23
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Data loss. Failed to merge raw event. appId"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 13
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 18
    :cond_4
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_3
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Data loss. Error querying raw events batch. appId"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 21
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v3, :cond_5

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 23
    :cond_6
    throw v0
.end method
