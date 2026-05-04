.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zzf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzf;->zza:Lcom/google/mlkit/vision/common/internal/zzf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
