.class public final Lcom/vungle/publisher/uv;
.super Lcom/vungle/publisher/wu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/uv$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/wu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/vs$c;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/vungle/publisher/vs$c;->l:Lcom/vungle/publisher/vs$c;

    return-object v0
.end method
