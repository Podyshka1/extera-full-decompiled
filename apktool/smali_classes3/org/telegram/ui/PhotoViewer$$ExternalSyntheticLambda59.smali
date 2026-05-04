.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda59;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda59;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda59;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda59;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$34gQw9QsI0zMnb4zOwm_Nh0zlPE(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
