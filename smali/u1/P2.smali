.class public final synthetic Lu1/P2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/P2;->b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput p2, p0, Lu1/P2;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu1/P2;->b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget p0, p0, Lu1/P2;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->l(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V

    return-void
.end method
