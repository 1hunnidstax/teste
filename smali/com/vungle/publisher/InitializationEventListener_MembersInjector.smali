.class public final Lcom/vungle/publisher/InitializationEventListener_MembersInjector;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/InitializationEventListener;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yc;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/afy;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/afy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/ql;>;"
    .local p2, "adManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/a;>;"
    .local p3, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bt;>;"
    .local p4, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/yc;>;"
    .local p5, "reportManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/afy;>;"
    .local p6, "initialConfigUpdatedEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$b;>;"
    .local p7, "globalEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$a;>;"
    .local p8, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/py;>;"
    .local p9, "deviceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/pn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->b:Ljavax/inject/Provider;

    .line 54
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_1
    iput-object p2, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->c:Ljavax/inject/Provider;

    .line 56
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_2
    iput-object p3, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->d:Ljavax/inject/Provider;

    .line 58
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_3
    iput-object p4, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->e:Ljavax/inject/Provider;

    .line 60
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_4
    iput-object p5, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->f:Ljavax/inject/Provider;

    .line 62
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_5
    iput-object p6, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->g:Ljavax/inject/Provider;

    .line 64
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_6
    iput-object p7, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->h:Ljavax/inject/Provider;

    .line 66
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_7
    iput-object p8, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->i:Ljavax/inject/Provider;

    .line 68
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_8
    iput-object p9, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->j:Ljavax/inject/Provider;

    .line 70
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/afy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/ql;>;"
    .local p1, "adManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/a;>;"
    .local p2, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bt;>;"
    .local p3, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/yc;>;"
    .local p4, "reportManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/afy;>;"
    .local p5, "initialConfigUpdatedEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$b;>;"
    .local p6, "globalEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$a;>;"
    .local p7, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/py;>;"
    .local p8, "deviceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/pn;>;"
    new-instance v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAdManager(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "adManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/a;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/a;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/a;

    .line 114
    return-void
.end method

.method public static injectDevice(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "deviceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/pn;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pn;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->h:Lcom/vungle/publisher/pn;

    .line 153
    return-void
.end method

.method public static injectExecutor(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bt;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bt;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/bt;

    .line 119
    return-void
.end method

.method public static injectGlobalEventListener(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "globalEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$a;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/InitializationEventListener$a;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->f:Lcom/vungle/publisher/InitializationEventListener$a;

    .line 143
    return-void
.end method

.method public static injectInitialConfigUpdatedEventListener(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "initialConfigUpdatedEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$b;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/InitializationEventListener$b;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->e:Lcom/vungle/publisher/InitializationEventListener$b;

    .line 137
    return-void
.end method

.method public static injectProtocolHttpGateway(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/yc;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yc;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/yc;

    .line 125
    return-void
.end method

.method public static injectReportManager(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/afy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "reportManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/afy;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/afy;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/afy;

    .line 130
    return-void
.end method

.method public static injectSdkState(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/py;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/py;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->g:Lcom/vungle/publisher/py;

    .line 148
    return-void
.end method


# virtual methods
.method public final injectMembers(Lcom/vungle/publisher/InitializationEventListener;)V
    .locals 2
    .param p1, "instance"    # Lcom/vungle/publisher/InitializationEventListener;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ql;

    iput-object v0, p1, Lcom/vungle/publisher/qe;->eventBus:Lcom/vungle/publisher/ql;

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/a;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/a;

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bt;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/bt;

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yc;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/yc;

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/afy;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/afy;

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/InitializationEventListener$b;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->e:Lcom/vungle/publisher/InitializationEventListener$b;

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/InitializationEventListener$a;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->f:Lcom/vungle/publisher/InitializationEventListener$a;

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/py;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->g:Lcom/vungle/publisher/py;

    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pn;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->h:Lcom/vungle/publisher/pn;

    .line 109
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/vungle/publisher/InitializationEventListener;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->injectMembers(Lcom/vungle/publisher/InitializationEventListener;)V

    return-void
.end method
