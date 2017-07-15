.class public final Lcom/vungle/publisher/cj$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/eo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/js$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/gs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/j;)Lcom/vungle/publisher/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cj;",
            "R:",
            "Lcom/vungle/publisher/ade;",
            "F::",
            "Lcom/vungle/publisher/dw",
            "<TA;TR;>;>(",
            "Lcom/vungle/publisher/j;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/vungle/publisher/cj$b$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/cj$b$1;-><init>(Lcom/vungle/publisher/cj$b;Lcom/vungle/publisher/j;)V

    .line 279
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cj$b$1;->a(Lcom/vungle/publisher/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dw;

    .line 259
    return-object v0
.end method
