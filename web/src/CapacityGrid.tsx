type Props = {
  from: string
  to: string
}

// CapacityGrid renders one row per person and one column per week, showing
// how allocated each person is and making over-allocation obvious.
//
// It reads from GET /api/capacity?from=&to= — the response shape is whatever
// you decided on in the API.
//
// TODO: implement.
export function CapacityGrid({ from, to }: Props) {
  return (
    <p>
      Nothing here yet — {from} to {to}
    </p>
  )
}
