.class public final Lcom/google/android/gms/internal/measurement/zzlr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzlr;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzlr;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlr;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlr;->zza:Lcom/google/android/gms/internal/measurement/zzlr;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlr;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzlr;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlr;->zzd:Lcom/google/android/gms/internal/measurement/zzlr;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/zzlr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlr;->zzd:Lcom/google/android/gms/internal/measurement/zzlr;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_1
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->$r8$clinit:I

    const-class v1, Lcom/google/android/gms/internal/measurement/zzlr;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzlr;->zzd:Lcom/google/android/gms/internal/measurement/zzlr;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/measurement/zznm;I)Lcom/google/android/gms/internal/measurement/zzme;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlq;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlr;->zze:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
