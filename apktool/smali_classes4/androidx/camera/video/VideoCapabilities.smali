.class public interface abstract Landroidx/camera/video/VideoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/camera/video/VideoCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Landroidx/camera/video/VideoCapabilities$1;

    invoke-direct {v0}, Landroidx/camera/video/VideoCapabilities$1;-><init>()V

    sput-object v0, Landroidx/camera/video/VideoCapabilities;->EMPTY:Landroidx/camera/video/VideoCapabilities;

    return-void
.end method


# virtual methods
.method public abstract getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;
.end method

.method public abstract getSupportedDynamicRanges()Ljava/util/Set;
.end method

.method public abstract getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
.end method
