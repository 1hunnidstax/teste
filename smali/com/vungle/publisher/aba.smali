.class public final Lcom/vungle/publisher/aba;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/aax$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/vo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/vungle/publisher/we;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/aba;->a:Lcom/vungle/publisher/aax$a;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/aax$a;->a(J)Lcom/vungle/publisher/aax;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/aba;->b:Lcom/vungle/publisher/vo;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0
.end method
