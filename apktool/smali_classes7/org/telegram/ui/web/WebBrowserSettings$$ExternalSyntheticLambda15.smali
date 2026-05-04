.class public final synthetic Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/WebBrowserSettings;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/web/WebBrowserSettings;

    iput-object p2, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/web/WebBrowserSettings;

    iget-object v1, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/web/WebBrowserSettings;->$r8$lambda$PEoFYtjd1f8SBVjTFtOK-_Bh2Zw(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
