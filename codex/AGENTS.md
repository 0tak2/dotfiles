# AGENTS.md

* 작업 브랜치
  - 작업 시작 전 현재 브랜치가 dev, main, master라면 사용자에게 경고
  - 특수한 상황(예시> main 핫픽스)이 아니라면 작업 브랜치 생성
  - 브랜치 이름
    - 형식: `prefix/eng-task-summary`
    - 예시: `feat/invoice-list-billing-amount`
* 커밋 정책
  - 작업 단위를 인간과 에이전트가 파악하기 적당한 스케일로 자르고, 한 번의 작업이 완료되면 커밋
  - 작업 단위는 레이어별, 기능별, 우선순위별 등 작업 유형에 맞게 적당하게 편성
  - 커밋 메시지
    - Subject
      - 형식: `prefix: 한국어 작업 요약`
      - 예시: `feat: 가맹점 정산 인보이스 목록 응답에 청구금액(billingAmount) 추가`\
    - Description
      - 형식: 한국어로 작성, 간략하게 요점 위주로 정리, 마지막에 `Co-authored-by: {AGENT_GIT_EMAIL, examples="[Codex <noreply@openai.com>", "Claude <noreply@anthropic.com>"]}` 추가하여 에이>전트 작업임을 명시
* PR
  - 의도된 상황(예시> 라이브 배포, main 핫픽스, 사용자 요청)이 아니라면 베이스는 dev로 지정
  - PR 제목
    - 형식: `prefix(scope): 한국어 작업 요약`
    - 예시: `feat(traefik/prd): admin 경로 ppb-admin-api 라우트 추가`
  - PR 본문
    - 한국어로 작성하기
    - 간략하게 요점 위주 정리
    - 마지막에 `🤖 이 PR은 {AGENT_NAME_WITH_MODEL_NAME}가 작성했습니다`라고 덧붙여 에이전트 작성 PR임을 명시
* 레포 별 AGENTS.md와 이 내용이 충돌된다면 레포별 규칙을 우선 적용
