.class final Lcom/vungle/publisher/a$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/a;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/vungle/publisher/a$3;->a:Lcom/vungle/publisher/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vungle/publisher/a$3;->a:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->t:Lcom/vungle/publisher/dx$b;

    new-instance v1, Lcom/vungle/publisher/dx$b$1;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/dx$b$1;-><init>(Lcom/vungle/publisher/dx$b;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/dx$b$1;->a()I

    .line 324
    return-void
.end method
