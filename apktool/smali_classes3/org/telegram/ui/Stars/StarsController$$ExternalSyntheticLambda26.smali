.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback5;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Stars/StarsController;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Stars/StarsController;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    move-object v3, p3

    check-cast v3, Ljava/lang/Long;

    move-object v4, p4

    check-cast v4, Ljava/util/ArrayList;

    move-object v5, p5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$44z_3SL-VZr4EKa7G7LwtXFazJE(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
