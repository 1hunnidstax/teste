.class public final Lcom/vungle/publisher/sw;
.super Lcom/vungle/publisher/mt;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/sw$a;
    }
.end annotation


# instance fields
.field public b:Lcom/vungle/publisher/sx;

.field public c:Lcom/vungle/publisher/th;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/vungle/publisher/mt;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getHistoryIndex()I
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/vungle/publisher/sw;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    return v0
.end method
