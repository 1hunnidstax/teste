.class public final Lcom/vungle/publisher/afo;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ahs;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/vungle/publisher/alw;->c()Lcom/vungle/publisher/ahs;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/afo;->a:Lcom/vungle/publisher/ahs;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/vungle/publisher/aii;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/aii",
            "<",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 44
    add-int/lit8 v0, p1, 0x1

    .line 45
    new-instance v1, Lcom/vungle/publisher/afo$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/vungle/publisher/afo$1;-><init>(Lcom/vungle/publisher/afo;ILjava/lang/String;)V

    return-object v1
.end method
