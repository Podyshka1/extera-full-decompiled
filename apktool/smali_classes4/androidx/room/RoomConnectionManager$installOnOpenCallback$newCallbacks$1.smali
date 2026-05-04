.class public final Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;
.super Landroidx/room/RoomDatabase$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomConnectionManager;->installOnOpenCallback(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)Landroidx/room/DatabaseConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onOpen:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;->$onOpen:Lkotlin/jvm/functions/Function1;

    .line 221
    invoke-direct {p0}, Landroidx/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;->$onOpen:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
