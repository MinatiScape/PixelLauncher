.class public Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/x;


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

.field public final synthetic val$translationEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;->this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    iput-object p2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;->val$translationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(LV/A;ZFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, LV/A;->h(LV/x;)V

    if-nez p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;->val$translationEnd:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
