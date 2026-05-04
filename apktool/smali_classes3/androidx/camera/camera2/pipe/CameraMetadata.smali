.class public interface abstract Landroidx/camera/camera2/pipe/CameraMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Metadata;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraMetadata$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    return-void
.end method


# virtual methods
.method public abstract awaitExtensionMetadata(I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
.end method

.method public abstract awaitPhysicalMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
.end method

.method public abstract get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
.end method

.method public abstract getCamera-Dz_R5H8()Ljava/lang/String;
.end method

.method public abstract getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getPhysicalCameraIds()Ljava/util/Set;
.end method

.method public abstract getSessionKeys()Ljava/util/Set;
.end method

.method public abstract getSupportedExtensions()Ljava/util/Set;
.end method
