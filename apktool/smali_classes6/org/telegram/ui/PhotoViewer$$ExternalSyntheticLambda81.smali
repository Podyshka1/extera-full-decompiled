.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda81;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$Ga8t4c1f0RGZj64i-o3y25TzNsw(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V

    return-void
.end method
