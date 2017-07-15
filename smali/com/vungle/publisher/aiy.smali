.class public final Lcom/vungle/publisher/aiy;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aii;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aii",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vungle/publisher/aiy;->a:Lcom/vungle/publisher/aii;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiy;->b:Z

    .line 38
    return-void
.end method

.method private a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/vungle/publisher/ajg;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/ajg;-><init>(Lcom/vungle/publisher/ahu;)V

    .line 43
    new-instance v1, Lcom/vungle/publisher/aiy$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/vungle/publisher/aiy$1;-><init>(Lcom/vungle/publisher/aiy;Lcom/vungle/publisher/ajg;Lcom/vungle/publisher/ahu;)V

    .line 92
    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 94
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/aiy;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;

    move-result-object v0

    return-object v0
.end method
