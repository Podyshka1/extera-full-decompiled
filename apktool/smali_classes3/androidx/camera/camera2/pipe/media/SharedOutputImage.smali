.class public interface abstract Landroidx/camera/camera2/pipe/media/SharedOutputImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/OutputImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->Companion:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    return-void
.end method


# virtual methods
.method public abstract acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;
.end method
