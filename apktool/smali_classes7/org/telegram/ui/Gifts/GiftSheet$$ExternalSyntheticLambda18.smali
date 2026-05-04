.class public final synthetic Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/GiftSheet;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;->$r8$lambda$5QCDaOBrYaMFNcvt65jXe315Hu4(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
