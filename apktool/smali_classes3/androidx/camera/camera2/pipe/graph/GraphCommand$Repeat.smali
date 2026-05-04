.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/GraphCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Repeat"
.end annotation


# instance fields
.field private final request:Landroidx/camera/camera2/pipe/Request;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/Request;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;->request:Landroidx/camera/camera2/pipe/Request;

    return-void
.end method


# virtual methods
.method public final getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 1

    .line 725
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;->request:Landroidx/camera/camera2/pipe/Request;

    return-object v0
.end method
