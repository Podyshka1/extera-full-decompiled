.class Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemInfo"
.end annotation


# instance fields
.field iconColorBottom:I

.field iconColorTop:I

.field iconRes:I

.field name:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->name:Ljava/lang/CharSequence;

    .line 55
    iput p2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconRes:I

    .line 56
    iput p3, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconColorTop:I

    .line 57
    iput p4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconColorBottom:I

    return-void
.end method
