.class public final Landroidx/camera/video/AudioSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AudioSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/video/AudioSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final builder()Landroidx/camera/video/AudioSpec$Builder;
    .locals 1

    .line 288
    new-instance v0, Landroidx/camera/video/AudioSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/AudioSpec$Builder;-><init>()V

    return-object v0
.end method

.method public final getDEFAULT()Landroidx/camera/video/AudioSpec;
    .locals 1

    .line 282
    invoke-static {}, Landroidx/camera/video/AudioSpec;->access$getDEFAULT$cp()Landroidx/camera/video/AudioSpec;

    move-result-object v0

    return-object v0
.end method
