.class public abstract Lcom/vungle/publisher/jo$b;
.super Lcom/vungle/publisher/cr$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/vungle/publisher/jo",
        "<TP;>;P:",
        "Lcom/vungle/publisher/jm",
        "<*TP;TE;>;>",
        "Lcom/vungle/publisher/cr$a",
        "<TP;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/cr$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)Lcom/vungle/publisher/ji;
    .locals 2

    .prologue
    .line 48
    const-string v0, "event"

    const-class v1, Lcom/vungle/publisher/jo$a;

    invoke-static {p1, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ji;

    return-object v0
.end method
