.class public final synthetic Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/ChatEditActivity;

    return-void
.end method


# virtual methods
.method public final didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/ChatEditActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ChatEditActivity;->$r8$lambda$Eq_-R0Fhgl4MaQ6m_NB70g6VTiI(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method
