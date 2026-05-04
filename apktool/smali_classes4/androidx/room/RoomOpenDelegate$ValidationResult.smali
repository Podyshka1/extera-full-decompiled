.class public final Landroidx/room/RoomOpenDelegate$ValidationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomOpenDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationResult"
.end annotation


# instance fields
.field public final expectedFoundMsg:Ljava/lang/String;

.field public final isValid:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    .line 55
    iput-object p2, p0, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    return-void
.end method
