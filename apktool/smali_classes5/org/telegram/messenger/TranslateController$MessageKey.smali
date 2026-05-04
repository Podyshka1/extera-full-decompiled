.class Lorg/telegram/messenger/TranslateController$MessageKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/TranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageKey"
.end annotation


# instance fields
.field public dialogId:J

.field public id:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/TranslateController$MessageKey;->dialogId:J

    .line 1999
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/TranslateController$MessageKey;->id:I

    return-void
.end method
