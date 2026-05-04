.class public interface abstract Landroidx/camera/core/impl/CameraValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;,
        Landroidx/camera/core/impl/CameraValidator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/impl/CameraValidator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/core/impl/CameraValidator$Companion;->$$INSTANCE:Landroidx/camera/core/impl/CameraValidator$Companion;

    sput-object v0, Landroidx/camera/core/impl/CameraValidator;->Companion:Landroidx/camera/core/impl/CameraValidator$Companion;

    return-void
.end method


# virtual methods
.method public abstract isChangeInvalid(Ljava/util/Set;Ljava/util/Set;)Z
.end method

.method public abstract validateOnFirstInit(Landroidx/camera/core/impl/CameraRepository;)V
.end method
