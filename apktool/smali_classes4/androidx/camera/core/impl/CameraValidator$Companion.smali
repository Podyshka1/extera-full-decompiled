.class public final Landroidx/camera/core/impl/CameraValidator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/core/impl/CameraValidator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/CameraValidator$Companion;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraValidator$Companion;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CameraValidator$Companion;->$$INSTANCE:Landroidx/camera/core/impl/CameraValidator$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/CameraValidator;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroidx/camera/core/impl/CameraValidatorImpl;

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/CameraValidatorImpl;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)V

    return-object v0
.end method
