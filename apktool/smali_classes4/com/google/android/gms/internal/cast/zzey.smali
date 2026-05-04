.class abstract Lcom/google/android/gms/internal/cast/zzey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Lcom/google/android/gms/internal/cast/zzex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/cast/zzey;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzey;->zzb:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzex;-><init>(Lcom/google/android/gms/internal/cast/zzew;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzey;->zzc:Lcom/google/android/gms/internal/cast/zzex;

    return-void
.end method
