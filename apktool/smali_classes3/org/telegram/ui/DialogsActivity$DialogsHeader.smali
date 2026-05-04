.class public Lorg/telegram/ui/DialogsActivity$DialogsHeader;
.super Lorg/telegram/tgnet/TLRPC$Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsHeader"
.end annotation


# instance fields
.field public headerType:I

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0

    .line 11022
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsHeader;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Dialog;-><init>()V

    .line 11023
    iput p2, p0, Lorg/telegram/ui/DialogsActivity$DialogsHeader;->headerType:I

    return-void
.end method
